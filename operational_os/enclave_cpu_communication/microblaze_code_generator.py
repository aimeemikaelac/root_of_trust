#!/usr/bin/python3
import os
import json
import argparse
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
    return environment.get_template(template_filename).render(context)


def process_function_definitions(function_definitions_file):
    """Single-pass parse of function definitions

    Generate a memory-map of the shared buffer for this app definition to use
    for the ARM and MicroBlaze sides of the protocol
    """
    memory_map = {}
    function_map = {}
    function_index = 0
    with open(function_definitions_file) as functions_handle:
        function_definitions = json.loads(functions_handle.read())
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

        for entry in function_memory_map:
            if entry["return"]:
                return_values.append(entry)
                statement["return_value"] = entry
            else:
                #TODO: support non-pointer inputs?
                if entry["output"]:
                    statement["outputs"].append(entry)
                else:
                    statement["inputs"].append(entry)
        statements.appens(statement)
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
                "function_name": function_name,
                "argument_list": argument_list,
                "return_buffer": return_buffer,
                "inputs": inputs,
                "outputs": outputs
            }
        )
    return functions

def generate_code(
    microblaze_template_file,
    arm_template_file,
    function_definitions_file
):
    function_map, memory_map = process_function_definitions(
        function_definitions_file
    )
    microblaze_code = render_microblaze_code(
        microblaze_template_file,
        function_map,
        memory_map
    )
    arm_code = render_arm_code(
        arm_template_file,
        function_map,
        memory_map
    )
    return microblaze_code, arm_code


def render_microblaze_code(template_file, function_map, memory_map):
    statements, return_values = generate_code_microblaze(
        function_map, memory_map
    )
    return render_template(
        template_file,
        {
            "return_values": return_values,
            "statements": statements
        }
    )


def render_arm_code(template_file, function_map, memory_map):
    functions = generate_code_arm(function_map, memory_map)
    return render_template(
        template_file,
        {
            "functions": functions
        }
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--microblaze_template",
                        help="Template to use for microblaze interface code",
                        default="microblaze_code.c.jinja")
    parser.add_argument("--microblaze_out",
                        help="File to output generated microblaze code",
                        default="microblaze_code.c")
    parser.add_argument("--arm_template",
                        help="Template to use for ARM interface code",
                        default="arm_code.c.jinja")
    parser.add_argument("--arm_out",
                        help="File tou output generated ARM code",
                        default="arm_code.c")
    parser.add_argument("--function_definitions",
                        help="Function definitions JSON file to use for code"
                        "generation",
                        default="function_definitions.json")
    args = parser.parse_args()
    microblaze_code, arm_code = generate_code(
        args.microblaze_template,
        args.arm_template,
        args.function_definitions
    )
    with open(args.microblaze_out, 'w') as microblaze_out_file:
        microblaze_out_file.write(microblaze_code)
    with open(args.arm_out, 'w') as arm_out_file:
        arm_out_file.write(arm_code)
