import json

def generateCode(function_definitions_file="function_definitions_file.json"):
    with open(function_definitions_file) as funcs:
        function_definitions = json.loads(funcs.read())
    # generate trusted calls
    case_statements = ""
    input_buffers = ""
    return_values = ""
    function_map = {}
    function_index = 0
    # TODO: handle ocalls
    data_buffer_offset = 0
    for function in function_definitions["trusted"]:
        function_map[function_index] = function
        function_name = function["name"]
        fucntion_inputs = function["inputs"]
        function_outputs = function["outputs"]
        case_statements.append(
            "\t\t\tcase '{}' :\n"
        )
        input_loading_code = ""
        current_inputs = []
        # Generate loading code to copy data from shared buffer into memory
        for function_input in function_inputs:
            input_name = function_input["name"]
            input_type = function_input["type"]
            input_length = function_input.get("length", 1)
            # Copy everything in as an unsigned char and cast to the correct
            # type
            input_buffer = "_buff_{}_{}[{}]".format(
                input_name, function_index, input_length
            )
            input_buffers.append(
                "unsigned char {};\n".format(input_buffer)
            )
            input_loading_code.append(
                "for(i=0; i<{}; i++){\n"
                "\t{}[i] = Xil_In8(DATA_OFFSET + {});\n"
                "}\n".format(
                    input_length, input_buffer, data_buffer_offset
                )
            )
            if input_length > 1:
                current_inputs.append("({}*){}".format(
                    input_type, input_buffer)
                )
            else:
                current_inputs.append("(({}*){})[0]".format(
                    input_type, input_buffer
                ))
            input_buffers.append(input_buffer)
            case_statements.append(input_loading_code)
        )
        # Generate function call
        return_value_type = function.get("return", None)
        if return_value_type:
            return_value = "_return_{}".format(function_index)
            return_values.append("{} {};".format(
                return_value_type, return_value
            ))
            case_statements.append("\t\t\t\t{} = {}({});\n".format(
                function_name, ",".join(current_inputs)
            ))
        "\t\t\t\tbreak;\n"
