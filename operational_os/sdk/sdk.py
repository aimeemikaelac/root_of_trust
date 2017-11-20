#!/usr/bin/python3

import os
import shutil
import shlex
import sys
import argparse
import json
import subprocess
from code_generator import *

DEFAULT_ARM_TEMPLATE = "arm_code.c.jinja"
DEFAULT_MICROBLAZE_TEMPLATE = "microblaze_code.c.jinja"
DEFAULT_ARM_HEADER_TEMPLATE = "arm_code.h.jinja"
DEFAULT_MICROBLAZE_HEADER_TEMPLATE = "microblaze_code.h.jinja"

DEFAULT_ARM_CODE = "arm_code.c"
DEFAULT_ARM_HEADER = "arm_protocol_header.h"
DEFAULT_MICROBLAZE_CODE = "microblaze_code.c"
DEFAULT_MICROBLAZE_HEADER = "microblaze_protocol_header.h"

SCRIPT_PATH = os.path.dirname(os.path.realpath(sys.argv[0]))
ARM_TEMPLATE = "{}/templates/{}".format(SCRIPT_PATH, DEFAULT_ARM_TEMPLATE)
MICROBLAZE_TEMPLATE = "{}/templates/{}".format(
    SCRIPT_PATH, DEFAULT_MICROBLAZE_TEMPLATE
)
ARM_HEADER_TEMPLATE = "{}/templates/{}".format(
    SCRIPT_PATH, DEFAULT_ARM_HEADER_TEMPLATE
)
MICROBLAZE_HEADER_TEMPLATE = "{}/templates/{}".format(
    SCRIPT_PATH, DEFAULT_MICROBLAZE_HEADER_TEMPLATE
)
MICROBLAZE_BUILD_DIRECTORY = "{}/microblaze_build/".format(SCRIPT_PATH)
MICROBLAZE_BUILD_SRC_DIRECTORY = "{}/src".format(MICROBLAZE_BUILD_DIRECTORY)
MICROBLAZE_MAKEFILE = "{}/makefile".format(
    MICROBLAZE_BUILD_DIRECTORY
)
MICROBLAZE_MAKEFILE_TEMPLATE = "{}.jinja".format(
    MICROBLAZE_MAKEFILE
)
MICROBLAZE_SUB_MAKEFILE = "{}/subdir.mk".format(
    MICROBLAZE_BUILD_SRC_DIRECTORY
)
MICROBLAZE_SUB_MAKEFILE_TEMPLATE = "{}.jinja".format(
    MICROBLAZE_SUB_MAKEFILE
)
ARM_BUILD_DIRECTORY = "{}/arm_build".format(SCRIPT_PATH)
ARM_MAKEFILE_TEMPLATE = "{}/Makefile.jinja".format(ARM_BUILD_DIRECTORY)
ARM_MAKEFILE_OUT = "{}/Makefile".format(ARM_BUILD_DIRECTORY)
ARM_CODE_OUT = "{}/{}".format(ARM_BUILD_DIRECTORY, DEFAULT_ARM_CODE)
ARM_HEADER_OUT = "{}/{}".format(ARM_BUILD_DIRECTORY, DEFAULT_ARM_HEADER)
MICROBLAZE_CODE_OUT = "{}/{}".format(
    MICROBLAZE_BUILD_SRC_DIRECTORY, DEFAULT_MICROBLAZE_CODE
)
MICROBLAZE_HEADER_OUT = "{}/{}".format(
    MICROBLAZE_BUILD_SRC_DIRECTORY, DEFAULT_MICROBLAZE_HEADER
)
SYSTEM_CONFIG_HEADER_TEMPLATE = "{}/system_config.h.jinja".format(
    SCRIPT_PATH
)
SYSTEM_CONFIG_HEADER = "system_config.h"
ENCLAVE_LIBRARY_DIRECTORY = "{}/enclave_library".format(SCRIPT_PATH)
MICROBLAZE_ENCLAVE_LIBRARY = (
    "{}/microblaze_remote_attestation_library.c".format(
        ENCLAVE_LIBRARY_DIRECTORY
    )
)
ARM_ENCLAVE_LIBRARY = "{}/enclave_library.cpp".format(ENCLAVE_LIBRARY_DIRECTORY)
ARM_ENCLAVE_LIBRARY_HEADER = "{}/enclave_library.h".format(
    ENCLAVE_LIBRARY_DIRECTORY
)


def parse_compilation_config(compilation_config_file):
    with open(compilation_config_file) as config_file_handle:
        return json.loads(config_file_handle.read())

def clean_build_directory(directory):
    for f in os.listdir(directory):
        if re.match(".\.c$", f) or re.match(".\.h$", f):
            os.remove(os.path.join(directory, f))

def copy_sources_includes(source, destination):
    if os.path.isfile(source):
        shutil.copy2(source, destination)
    else:
        for f in os.listdir(source):
            if re.match(".\.h$", f) or re.match(".\.c$", f):
                shutil.copy(os.path.join(source, f), destination)

def generate_microblaze_makefiles(compilation_config):
    try:
        microblaze_config = compilation_config["microblaze"]
        sources = microblaze_config["sources"]
        source_directories = microblaze_config["source_directories"]
        includes = microblaze_config["includes"]
        include_directories = microblaze_config["include_directories"]
        program_name = compilation_config["program_name"]
        clean_build_directory(MICROBLAZE_BUILD_DIRECTORY)
        clean_build_directory(MICROBLAZE_BUILD_SRC_DIRECTORY)
        sources_all = (
            sources + source_directories + includes + include_directories
        )
        for source_item in sources_all:
            copy_sources_includes(source_item, MICROBLAZE_BUILD_SRC_DIRECTORY)
        return render_template(
            MICROBLAZE_MAKEFILE_TEMPLATE,
            {
                "program_name": program_name,
            }
        ), render_template(
            MICROBLAZE_SUB_MAKEFILE_TEMPLATE,
            {

            }
        ), program_name
    except KeyError:
        return None, None, None

def generate_arm_makefile(compile_config):
    try:
        arm_config = compile_config["arm"]
        sources = arm_config["sources"]
        source_directories = arm_config["source_directories"]
        includes = arm_config["includes"]
        include_directories = arm_config["include_directories"]
        libraries = arm_config["libraries"]
        library_directories = arm_config["library_directories"]
        program_name = compile_config["program_name"]
        cross_compile = arm_config.get("cross_compile", "")
        clean_build_directory(ARM_BUILD_DIRECTORY)
        sources_all = (
            sources + source_directories + includes + include_directories
        )
        for source_item in sources_all:
            copy_sources_includes(source_item, ARM_BUILD_DIRECTORY)
        return render_template(
            ARM_MAKEFILE_TEMPLATE,
            {
                "include_dirs": " ".join(include_directories),
                "lib_dirs": " ".join(library_directories),
                "libs": " ".join(libraries),
                "program_name": program_name,
                "cross_compile": cross_compile
            }
        ), program_name
    except KeyError:
        return None, None

def render_system_config_header(system_config):
    try:
        arm_config = system_config["arm"]
        return render_template(
            SYSTEM_CONFIG_HEADER_TEMPLATE,
            {
                "ecall_buffer": arm_config["shared_buffer_address"],
                "ecall_buffer_length": arm_config[
                    "shared_buffer_length"
                ],
                "program_buffer": arm_config[
                    "program_memory_address"
                ],
                "program_memory_length": arm_config[
                    "program_memory_length"
                ],
                "reset_controller_address": arm_config[
                    "reset_controller_address"
                ]
            }
        )
    except KeyError:
        return None

def insert_remote_attestation(function_definitions):
    function_definitions["trusted"].append(
        {
            "name": "start_attestation",
            "inputs":[
                {
                    "name":"remote_message",
                    "type":"unsigned char",
                    "length":256
                }
            ],
            "outputs":[
                {
                    "name":"message_out",
                    "type":"unsigned char",
                    "length":256
                }
            ]
        }
    )
    function_definitions["trusted"].append(
        {
            "name":"generate_encrypted_message",
            "inputs":[],
            "outputs":[
                {
                    "name":"message",
                    "type":"unsigned char",
                    "length":256
                },
                {
                    "name":"message_length",
                    "type":"unsigned int",
                    "length":4
                }
            ]
        }
    )
    return function_definitions


if __name__ == "__main__":
    # Thrift:
    # 1. generate thrift code. Not needed for code generation of arm-microblaze
    # communication
    # Main code generation
    # 1. generate arm, microblaze code (and headers) from json
    # 2. generate makefile for arm, microblaze
    # 3. compile arm, microblaze executable
    # inputs: json file of functions, list of files to compile
    parser = argparse.ArgumentParser()
    # subparsers = parser.add_subparsers()
    # thrift_parser = subparsers.add_parser(
    #     "thrift", help="Generate thrift communication code"
    # )
    # thrift_parser.add_argument("--to_server",
    #                            help="Generate thrift interface for "
    #                            "communicating from program to server",
    #                            action="store_true")
    # thrift_parser.add_argument("--to_program",
    #                            help="Generate code for communicating from "
    #                            "server to program",
    #                            action="store_true")
    # thrift_parser.add_argument("--out_dir",
    #                            help="Directory to output generated code to.")
    # thrift_parser.add_argument("--language",
    #                            help="Language to generate code for. Supports "
    #                            "py and cpp as options",
    #                            required=True)
    # TODO: list of files to compile or specify a list of files in a file
    # forr now, just a list of files as arguments
    # enclave_parser = subparser.add_parser(
    #     "generate_enclave", help="Generate an enclave program"
    # )
    parser.add_argument(
        "--compilation_config",
        help="JSON config listing the source code, headers and libraries to"
        "use to compile an enclave ARM and microblaze program",
        required=False
    )
    parser.add_argument(
        "--function_definitions",
        help="JSON config listing the enclave communication interface",
        required=True
    )
    parser.add_argument(
        "--system_configuration",
        help="JSON config detailing system config, including memory mapped "
        "addresses",
        required=True
    )
    parser.add_argument(
        "--program_name",
        help="Name of the program",
        required=True
    )
    parser.add_argument(
        "--out_dir",
        help="Directory to ouput to. Defaults to current directory.",
        required=False,
        default=os.getcwd()
    )
    parser.add_argument(
        "--arm_header_out",
        help="File to output arm header to",
        default="arm_protocol_header.h"
    )
    parser.add_argument(
        "--microblaze_header_out",
        help="File to output microblaze header to",
        default="microblaze_protocol_header.h"
    )
    args = parser.parse_args()
    system_config = parse_system_config(args.system_configuration)
    function_definitions = parse_function_definitions(args.function_definitions)
    # TODO: append remote attestation functions to the input
    # function definitions
    function_definitions = insert_remote_attestation(function_definitions)
    function_map, memory_map = process_function_definitions(
        function_definitions
    )
    microblaze_code, microblaze_header, arm_code, arm_header = generate_code(
        MICROBLAZE_TEMPLATE,
        ARM_TEMPLATE,
        MICROBLAZE_HEADER_TEMPLATE,
        ARM_HEADER_TEMPLATE,
        function_map,
        memory_map,
        args.arm_header_out,
        args.microblaze_header_out,
        system_config
    )
    #TODO: refactor to only generate this header and import in
    #the generated arm code
    system_config_header = render_system_config_header(
        system_config
    )
    with open(SYSTEM_CONFIG_HEADER, 'w') as system_config_out:
        system_config_out.write(system_config_header)
    with open(ARM_CODE_OUT, 'w') as arm_code_file:
        arm_code_file.write(arm_code)
    with open(ARM_HEADER_OUT, 'w') as arm_header_file:
        arm_header_file.write(arm_header)
    with open(MICROBLAZE_CODE_OUT, 'w') as microblaze_code_file:
        microblaze_code_file.write(microblaze_code)
    with open(MICROBLAZE_HEADER_OUT, 'w') as microblaze_header_file:
        microblaze_header_file.write(microblaze_header)
    if args.compilation_config is not None:
        compilation_config = parse_compilation_config(args.compilation_config)
        microblaze_makefile, microblaze_sub_makefile, microblaze_program = (
            generate_microblaze_makefiles(compilation_config)
        )
        with open(MICROBLAZE_MAKEFILE, 'w') as microblaze_makefile_out:
            microblaze_makefile_out.write(microblaze_makefile)
        with open(MICROBLAZE_SUB_MAKEFILE, 'w') as microblaze_sub_makefile_out:
            microblaze_sub_makefile_out.write(microblaze_sub_makefile)
        shutil.copy2(MICROBLAZE_ENCLAVE_LIBRARY, MICROBLAZE_BUILD_SRC_DIRECTORY)
        microblaze_build = subprocess.run(
            shlex.split("make clean all"),
            cwd=MICROBLAZE_BUILD_DIRECTORY,
            stderr=subprocess.STDOUT
        )
        if microblaze_build.returncode != 0:
            print("Building microblaze code failed")
            sys.exit(-1)
        binary_gen = subprocess.run(
            shlex.split("mb-objcopy -O binary {0}.elf {0}.bin".format(
                microblaze_program
            )),
            stderr=subprocess.STDOUT,
            cwd=MICROBLAZE_BUILD_DIRECTORY
        )
        if binary_gen.returncode != 0:
            print("Generating microblaze binary failed")
            sys.exit(-1)
        arm_makefile, arm_program = generate_arm_makefile(compilation_config)
        with open(ARM_MAKEFILE_OUT, 'w') as arm_makefile_out:
            arm_makefile_out.write(arm_makefile)
        shutil.copy2(ARM_ENCLAVE_LIBRARY, ARM_BUILD_DIRECTORY)
        shutil.copy2(ARM_ENCLAVE_LIBRARY_HEADER, ARM_BUILD_DIRECTORY)
        shutil.copy2(SYSTEM_CONFIG_HEADER, ARM_BUILD_DIRECTORY)
        arm_build = subprocess.run(
            "make", cwd=ARM_BUILD_DIRECTORY, stderr=subprocess.STDOUT
        )
        if arm_build.returncode != 0:
            print("Building arm code failed")
            sys.exit(-1)
        shutil.copy2(
            "{}/{}".format(ARM_BUILD_DIRECTORY, arm_program), os.getcwd()
        )
        shutil.copy2(
            "{}/{}.bin".format(MICROBLAZE_BUILD_DIRECTORY, microblaze_program),
            os.getcwd()
        )









    # enclave_parser.add_argument("--arm_source",
    #                     help="A list of source code files to compile for the "
    #                     "program running on the Arm CPU. If specificed, will "
    #                     "generate makefiles and cross-compile code for the Arm "
    #                     "program.",
    #                     nargs="+",
    #                     required=False)
    # enclave_parser.add_argument(
    #     "--arm_includes",
    #     help="A list of include directories for the Arm program",
    #     nargs="+",
    #     required=False
    # )
    # enclave_parser.add_argument(
    #     "--arm_libs",
    #     help="A list of libraries for the Arm program",
    #     nargs="+",
    #     required=False
    # )
    # enclave_parser.add_argument(
    #     "--arm_libs_directories",
    #     help="A list of library directories for the Arm program",
    #     nargs="+",
    #     required=False
    # )
    # enclave_parser.add_argumetn(
    #     "--microblaze_source",
    #     help="A list of files to compile for the microblaze "
    #     "enclave. Will generate a makefile and cross-compile "
    #     "for microblaze",
    #     nargs="+",
    #     required=False
    # )
    # enclave_parser.add_argument(
    #     "--microblaze_includes",
    #     help="A list of include directories for the microblaze program",
    #     nargs="+",
    #     required=False
    # )
    # enclave_parser.add_argument(
    #     "--microblaze_libs",
    #     help="A list of libraries for the microblaze program",
    #     nargs="+",
    #     required=False
    # )
    # enclave_parser.add_argument(
    #     "--microblaze_libs_directories",
    #     help="A list of library directories for the microblaze program",
    #     nargs="+",
    #     required=False
    # )
