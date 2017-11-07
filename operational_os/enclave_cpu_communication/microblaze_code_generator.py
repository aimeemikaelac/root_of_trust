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
        offset = 0
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
    case_statements = ""
    return_values = ""
    print(function_map)
    for function_name in function_map:
        inputs = []
        outputs = []
        return_value_code = None
        return_variable = None
        function_memory_map = memory_map[function_name]
        function_id = function_map[function_name]
        case_statements += (
            "\t\t\tcase {} :\n".format(function_id)
        )

        for entry in function_memory_map:
            if entry["return"]:
                return_type = entry["type"]
                return_type_name = entry["name"]
                return_type_length = entry["length"]
                return_type_start = entry["start"]
                return_variable = "{}_{}".format(return_type_name, function_id)
                return_value = "\t{} {};\n".format(
                    return_type, return_variable
                )
                return_values += return_value
                return_value_code = (
                    "\t\t\t\tfor(i=0; i<{}; i++){{\n"
                    "\t\t\t\t\tXil_Out8(MEMORY_BUFFER_ADDRESS + {} + i, " "((unsigned char*)(&{}))[i]);\n"
                    "\t\t\t\t}}\n".format(
                        return_type_length, return_type_start, return_variable
                    )
                )
            else:
                #TODO: support non-pointer inputs?
                entry_start = entry["start"]
                entry_type = entry["type"]
                casted_value = (
                    "({}*)(MEMORY_BUFFER_ADDRESS + {})"
                    .format(entry_type, entry_start)
                )
                if entry["output"]:
                    outputs.append(casted_value)
                else:
                    inputs.append(casted_value)
        # Generate function call
        # return_value_type = function.get("return", None)
        function_call = "{}({}, {});\n".format(
            function_name, ",".join(inputs), ",".join(outputs)
        )
        if return_value_code:
            case_statements += "\t\t\t\t{} = {}{}".format(
                return_variable, function_call, return_value_code
            )
        else:
            case_statements += "\t\t\t\t{}".format(function_call)
        case_statements += "\t\t\t\tbreak;\n"
    return case_statements, return_values


# def generate_code_arm(
#     function_definitions_file="function_definitions_file.json"
# ):
#     with open(function_definitions_file) as funcs:
#         function_definitions = json.loads(funcs.read())
#     # generate trusted calls
#     case_statements = ""
#     input_buffers = ""
#     output_buffers = ""
#     return_values = ""
#     function_map = {}
#     function_index = 0
#     # TODO: handle ocalls
#     data_buffer_offset = 0
#     for function in function_definitions["trusted"]:
#         function_map[function_index] = function
#         function_name = function["name"]
#         function_inputs = function["inputs"]
#         function_outputs = function["outputs"]
#         case_statements.append(
#             "\t\t\tcase '{}' :\n"
#         )
#         input_loading_code = ""
#         output_loading_code = ""
#         current_inputs = []
#         current_outputs = []
#         # Generate loading code to copy data from shared buffer into memory
#         for function_input in function_inputs:
#             input_name = function_input["name"]
#             input_type = function_input["type"]
#             input_length = function_input.get("length", 1)
#             # Copy everything in as an unsigned char and cast to the correct
#             # type
#             input_buffer = "_buff_{}_{}[{}]".format(
#                 input_name, function_index, input_length
#             )
#             input_buffers.append(
#                 "unsigned char {};\n".format(input_buffer)
#             )
#             input_loading_code.append(
#                 "for(i=0; i<{}; i++){\n"
#                 "\t{}[i] = Xil_In8(DATA_OFFSET + {});\n"
#                 "}\n".format(
#                     input_length, input_buffer, data_buffer_offset
#                 )
#             )
#             if input_length > 1:
#                 current_inputs.append("({}*){}".format(
#                     input_type, input_buffer)
#                 )
#             else:
#                 current_inputs.append("(({}*){})[0]".format(
#                     input_type, input_buffer
#                 ))
#             input_buffers.append(input_buffer)
#             case_statements.append(input_loading_code)
#             data_buffer_offset += input_length
#         )
#         # Generate output buffers and output code
#         for function_output in function_output:
#             output_name = function_output["name"]
#             output_type = function_output["type"]
#             output_length = function_output["length"]
#             output_buffer = "_out_buff_{}_{}[{}]".format(
#                 output_name, function_index, output_length
#             )
#             output_buffers.append(
#                 "unsigned char {};\n".format(output_buffer)
#             )
#             output_loading_code.append(
#                 "for(i=0; i<{}; i++){\n"
#                 "\tXil_Out8(DATA_OFFSET + {}, {}[i]);\n"
#                 "}\n".format(
#                     output_length, data_buffer_offset, output_buffer
#                 )
#             )
#             current_outputs.append("({}*){}".format(
#                 output_type, output_buffer
#             ))
#         # Generate function call
#         return_value_type = function.get("return", None)
#         if return_value_type:
#             return_value = "_return_{}".format(function_index)
#             return_values.append("{} {};".format(
#                 return_value_type, return_value
#             ))
#             case_statements.append("\t\t\t\t{} = {}({});\n".format(
#                 function_name, ",".join(current_inputs)
#             ))
#
#         "\t\t\t\tbreak;\n"

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
    #TODO: generate arm code
    return microblaze_code, ""


def render_microblaze_code(template_file, function_map, memory_map):
    case_statements, return_values = generate_code_microblaze(
        function_map, memory_map
    )
    return render_template(
        args.microblaze_template,
        {
            "return_values": return_values,
            "case_statements": case_statements
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
    #TODO: write ARM code out to file
