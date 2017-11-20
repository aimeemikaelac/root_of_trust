#!/usr/bin/python3
import os
import json
import argparse
import re
from jinja2 import Environment, FileSystemLoader

# PATH = os.path.dirname(os.path.abspath(__file__))
# TEMPLATE_ENVIRONMENT = Environment(
#     autoescape=False,
#     loader=FileSystemLoader(os.path.join(PATH, 'templates')),
#     trim_blocks=False)

def render_template(template_filename, context):
    path = os.path.dirname(os.path.abspath(template_filename))
    environment = Environment(
        autoescape=False,
        loader=FileSystemLoader(path),
        trim_blocks=False
    )
    return environment.get_template(
        os.path.basename(template_filename)
    ).render(context)

def parse_function_definitions(function_definitions_file):
    with open(function_definitions_file) as functions_handle:
        return json.loads(functions_handle.read())

def process_function_definitions(function_definitions):
    """Single-pass parse of function definitions

    Generate a memory-map of the shared buffer for this app definition to use
    for the ARM and MicroBlaze sides of the protocol
    """
    # TODO: use system config to determine invalid memory configurations
    memory_map = {}
    function_map = {}
    function_index = 0
    trusted_functions = function_definitions["trusted"]
    # Trusted functions
    for function in trusted_functions:
        #Account for the control segment
        #TODO: config plz
        offset = 0x100
        function_name = function["name"]
        function_map[function_name] = function_index
        memory_map[function_name] = []
        if "return" in function:
            function_return = function["return"]
            function_return["return"] = True
            function_return["output"] = False
            function_return["start"] = offset
            length = function_return.get("length", 1)
            function_return["end"] = offset + length
            memory_map[function_name].append(function_return)
            offset += length
        for function_input in function["inputs"]:
            entry = dict(function_input)
            entry["output"] = False
            entry["return"] = False
            length = entry.get("length", 1)
            entry["start"] = offset
            #TODO: pad to word boundaries
            entry["end"] = offset + length
            memory_map[function_name].append(entry)
            offset += length
        for function_output in function["outputs"]:
            entry = dict(function_output)
            entry["return"] = False
            entry["output"] = True
            length = entry.get("length", 1)
            entry["start"] = offset
            #TODO: pad to word boundaries
            entry["end"] = offset + length
            memory_map[function_name].append(entry)
            offset += length
        function_index += 1
    return function_map, memory_map

def generate_code_microblaze(function_map, memory_map):
    statements = []
    return_values = []
    for function_name in function_map:
        function_memory_map = memory_map[function_name]
        statement = {}
        statement["return_value"] = None
        statement["inputs"] = []
        statement["outputs"] = []
        statement["function_id"] = function_map[function_name]
        statement["function_name"] = function_name
        arguments = []
        for entry in function_memory_map:
            if entry["return"]:
                return_values.append(entry)
                statement["return_value"] = entry
            else:
                #TODO: support non-pointer inputs?
                # if entry["output"]:
                #     statement["outputs"].append(entry)
                # else:
                #     statement["inputs"].append(entry)
                arguments.append(
                    "({}*)(SHARED_BUFFER_ADDRESS + {})".format(
                        entry["type"], entry["start"]
                    )
                )
        statement["arguments"] = ", ".join(arguments)
        statements.append(statement)
    return statements, return_values


def generate_code_arm(
    function_map,
    memory_map,
    function_template="arm_code_function_template.c.jinja"
):
    functions = []
    for function_name in function_map:
        function_memory_map = memory_map[function_name]
        function_id = function_map[function_name]

        inputs = []
        outputs = []
        return_type = "void"
        return_buffer = None
        argument_list = []
        for entry in function_memory_map:
            if entry["return"]:
                return_buffer = entry
                return_buffer["buffer_length"] = int(ceil(entry["length"]/4))
                return_type = return_buffer["type"]
            else:
                #TODO: support non-pointer inputs?
                argument_list.append(
                    "{} *{}".format(entry["type"], entry["name"])
                )
                if entry["output"]:
                    outputs.append(entry)
                else:
                    inputs.append(entry)
        functions.append(
            {
                "function_name": function_name,
                "return_type": return_type,
                "function_id": function_id,
                "argument_list": argument_list,
                "return_buffer": return_buffer,
                "inputs": inputs,
                "outputs": outputs
            }
        )
    return functions

def get_header_name(header_file_name):
    file_name = os.path.basename(header_file_name)
    if len(file_name) == 0:
        print(
            "Header file name {} is invalid. File name too short"
            .format(file_name))
        return None
    tokens = header_file_name.split(".")
    if len(tokens) != 2:
        print(
            "Header file name {} is invalid. No extension."
            .format(file_name))
        return None
    if tokens[1] != "h":
        print(
            "Header file name {} is invalid. Invalid extension"
            .format(file_name))
        return None
    if not re.match("[0-9a-zA-Z_]+", file_name):
        print(
            "Header file name {} is invalid. Invalid characters in name"
            .format(file_name))
        return None
    return header_file_name.upper().replace(".", "_")


def generate_header(
    functions, system_config, header_name, header_template, cpu_type="arm"
):
    if not header_name:
        return None
    try:
        if not isinstance(system_config[cpu_type], dict):
            return None
        shared_buffer = system_config[cpu_type]["shared_buffer_address"]
        shared_buffer_length = system_config[cpu_type]["shared_buffer_length"]
    except KeyError as e:
        print(str(e))
        return None
    return render_template(
        header_template,
        {
            "functions":functions,
            "header_name": header_name,
            "shared_buffer": shared_buffer,
            "shared_buffer_length": shared_buffer_length
        }
    )

def generate_code(
    microblaze_template_file,
    arm_template_file,
    microblaze_header_template,
    arm_header_template,
    function_map,
    memory_map,
    arm_header_name,
    microblaze_header_name,
    system_config
):
    # function_map, memory_map = process_function_definitions(
    #     function_definitions_file
    # )
    arm_code, arm_header, functions = render_arm_code(
        arm_template_file,
        arm_header_template,
        arm_header_name,
        function_map,
        memory_map,
        system_config
    )
    microblaze_code, microblaze_header = render_microblaze_code(
        microblaze_template_file,
        microblaze_header_template,
        microblaze_header_name,
        function_map,
        memory_map,
        system_config,
        functions
    )
    return microblaze_code, microblaze_header, arm_code, arm_header


def render_microblaze_code(
    template_file,
    header_template_file,
    header_name,
    function_map,
    memory_map,
    system_config,
    functions
):
    statements, return_values = generate_code_microblaze(
        function_map, memory_map
    )
    header_file_name = get_header_name(header_name)
    header_file = generate_header(
        functions,
        system_config,
        header_file_name,
        header_template_file,
        cpu_type="microblaze"
    )
    return render_template(
        template_file,
        {
            "return_values": return_values,
            "statements": statements,
            "header_file_name": header_name
        }
    ), header_file


def render_arm_code(
    template_file,
    header_template_file,
    header_name,
    function_map,
    memory_map,
    system_config
):
    functions = generate_code_arm(function_map, memory_map)
    header_file_name = get_header_name(header_name)
    header_file = generate_header(
        functions,
        system_config,
        get_header_name(header_name),
        header_template_file
    )
    return render_template(
        template_file,
        {
            "functions": functions,
            "header_file_name": header_name
        }
    ), header_file, functions


def parse_system_config(system_config_file):
    with open(system_config_file) as config_file:
        return json.loads(config_file.read())


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--microblaze_template",
                        help="Template to use for microblaze interface code",
                        required=True)
    parser.add_argument("--microblaze_header_template",
                        help="Template to use for microblaze header",
                        required=True)
    parser.add_argument("--microblaze_out",
                        help="File to output generated microblaze code",
                        default="microblaze_code.c")
    parser.add_argument("--microblaze_header_out",
                        help="File to output microblaze header to",
                        default="microblaze_protocol_header.h")
    parser.add_argument("--arm_template",
                        help="Template to use for ARM interface code",
                        required=True)
    parser.add_argument("--arm_header_template",
                        help="Template to use for ARM header",
                        required=True)
    parser.add_argument("--arm_out",
                        help="File tou output generated ARM code",
                        default="arm_code.c")
    parser.add_argument("--arm_header_out",
                        help="File to output arm header to",
                        default="arm_protocol_header.h")
    parser.add_argument("--function_definitions",
                        help="Function definitions JSON file to use for code"
                        "generation",
                        required=True)
    parser.add_argument("--system_config",
                        help="System configuration JSON",
                        required=True)
    args = parser.parse_args()
    arm_header_name = args.arm_header_out
    microblaze_header_name = args.microblaze_header_out
    system_config = parse_system_config(args.system_config)
    function_definitions = parse_function_definitions(args.function_definitions)
    function_map, memory_map = process_function_definitions(
        function_definitions
    )
    microblaze_code, microblaze_header, arm_code, arm_header = generate_code(
        args.microblaze_template,
        args.arm_template,
        args.microblaze_header_template,
        args.arm_header_template,
        function_map,
        memory_map,
        arm_header_name,
        microblaze_header_name,
        system_config
    )
    with open(args.microblaze_out, 'w') as microblaze_out_file:
        microblaze_out_file.write(microblaze_code)
    with open(args.microblaze_header_out, 'w') as microblaze_header_out:
        microblaze_header_out.write(microblaze_header)
    with open(args.arm_out, 'w') as arm_out_file:
        arm_out_file.write(arm_code)
    with open(args.arm_header_out, 'w') as arm_header_out:
        arm_header_out.write(arm_header)
