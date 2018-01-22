#!/usr/bin/python3

import os
import shutil
import shlex
import sys
import argparse
import json
import subprocess
import sys
from code_generator import *

DEFAULT_ARM_TEMPLATE = "arm_code.c.jinja"
DEFAULT_MICROBLAZE_TEMPLATE = "microblaze_code.c.jinja"
DEFAULT_ARM_HEADER_TEMPLATE = "arm_code.h.jinja"
DEFAULT_MICROBLAZE_HEADER_TEMPLATE = "microblaze_code.h.jinja"

DEFAULT_ARM_CODE = "arm_code.c"
DEFAULT_ARM_HEADER = "arm_protocol_header.h"
DEFAULT_MICROBLAZE_CODE = "microblaze_code.c"
DEFAULT_MICROBLAZE_HEADER = "microblaze_protocol_header.h"
DEFAULT_SYSTEM_CONFIG_HEADER = "system_config.h"

OUTPUT_DIRECTORY = "generated_code_out"

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
MICROBLAZE_BUILD_SRC_DIRECTORY = "{}src".format(MICROBLAZE_BUILD_DIRECTORY)
MICROBLAZE_MAKEFILE = "{}/makefile".format(
    MICROBLAZE_BUILD_DIRECTORY
)
MICROBLAZE_MAKEFILE_TEMPLATE = "{}/templates/makefile.jinja".format(
    SCRIPT_PATH
)
MICROBLAZE_SUB_MAKEFILE = "{}/subdir.mk".format(
    MICROBLAZE_BUILD_SRC_DIRECTORY
)
MICROBLAZE_SUB_MAKEFILE_TEMPLATE = "{}/templates/subdir.mk.jinja".format(
    SCRIPT_PATH
)
ARM_BUILD_DIRECTORY = "{}/arm_build".format(SCRIPT_PATH)
ARM_MAKEFILE_TEMPLATE = "{}/templates/Makefile.jinja".format(
    SCRIPT_PATH
)
ARM_MAKEFILE_OUT = "{}/Makefile".format(ARM_BUILD_DIRECTORY)
ARM_CODE_OUT = "{}/{}".format(ARM_BUILD_DIRECTORY, DEFAULT_ARM_CODE)
ARM_HEADER_OUT = "{}/{}".format(ARM_BUILD_DIRECTORY, DEFAULT_ARM_HEADER)
MICROBLAZE_CODE_OUT = "{}/{}".format(
    MICROBLAZE_BUILD_SRC_DIRECTORY, DEFAULT_MICROBLAZE_CODE
)
MICROBLAZE_HEADER_OUT = "{}/{}".format(
    MICROBLAZE_BUILD_SRC_DIRECTORY, DEFAULT_MICROBLAZE_HEADER
)

SYSTEM_CONFIG_HEADER = "{}/{}".format(
    ARM_BUILD_DIRECTORY, DEFAULT_SYSTEM_CONFIG_HEADER
)
SYSTEM_CONFIG_HEADER_TEMPLATE = "{}/templates/{}.jinja".format(
    SCRIPT_PATH, DEFAULT_SYSTEM_CONFIG_HEADER
)
ENCLAVE_LIBRARY_DIRECTORY = "{}/enclave_library".format(SCRIPT_PATH)
MICROBLAZE_ENCLAVE_LIBRARY = (
    "{}/microblaze_remote_attestation_library.c".format(
        ENCLAVE_LIBRARY_DIRECTORY
    )
)
ARM_ENCLAVE_LIBRARY = "{}/enclave_library.cpp".format(ENCLAVE_LIBRARY_DIRECTORY)
ARM_ENCLAVE_LIBRARY_HEADER = "{}/enclave_library_hardware.h".format(
    ENCLAVE_LIBRARY_DIRECTORY
)
ARM_ENCLAVE_LIBRARY_HEADER_SIMULATION =  (
    "{}/enclave_library_simulation.h".format(ENCLAVE_LIBRARY_DIRECTORY)
)
LOAD_SCRIPT = "{}/lscript.ld".format(SCRIPT_PATH)


def parse_compilation_config(compilation_config_file):
    with open(compilation_config_file) as config_file_handle:
        return json.loads(config_file_handle.read())

def clean_build_directory(directory):
    # for f in os.listdir(directory):
    #     if re.match(".\.c$", f) or re.match(".\.h$", f):
    #         os.remove(os.path.join(directory, f))
    if os.path.exists(directory):
        shutil.rmtree(directory)
    os.makedirs(directory)
    print("Created directory: {}".format(directory))


def copy_sources_includes(source, destination):
    print("Source {} is directory? {}".format(
        source, os.path.isdir(source)
    ))
    print("Source {} is file? {}".format(
        source, os.path.isfile(source)
    ))
    if os.path.isfile(source):
        print("Copying file {} to {}".format(source, destination))
        shutil.copy2(source, destination)
    elif os.path.isdir(source):
        print(os.listdir(source))
        for f in os.listdir(source):
            root,extension = os.path.splitext(f)
            if extension in [".h", ".c", ".cpp"]:
                print("Copying {} to {}".format(f, destination))
                shutil.copy(os.path.join(source, f), destination)

def generate_microblaze_makefiles(compilation_config):
    try:
        microblaze_config = compilation_config["microblaze"]
        sources = microblaze_config["sources"]
        source_directories = microblaze_config["source_directories"]
        includes = microblaze_config["includes"]
        include_directories = microblaze_config["include_directories"]
        program_name = compilation_config["program_name"]
        # clean_build_directory(MICROBLAZE_BUILD_DIRECTORY)
        # clean_build_directory(MICROBLAZE_BUILD_SRC_DIRECTORY)
        sources_all = (
            sources + source_directories + includes + include_directories
        )
        print("Sources all: {}".format(sources_all))
        print("Includes: {}".format(includes))
        for source_item in sources_all:
            print("Copying {}".format(source_item))
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

def generate_arm_makefile(compile_config, cross_compile=""):
    try:
        arm_config = compile_config["arm"]
        sources = arm_config["sources"]
        source_directories = arm_config["source_directories"]
        includes = arm_config["includes"]
        include_directories = arm_config["include_directories"]
        libraries = arm_config["libraries"]
        library_directories = arm_config["library_directories"]
        program_name = compile_config["program_name"]
        # clean_build_directory(ARM_BUILD_DIRECTORY)
        sources_all = (
            sources + source_directories + includes + include_directories
        )
        for source_item in sources_all:
            copy_sources_includes(source_item, ARM_BUILD_DIRECTORY)
        return render_template(
            ARM_MAKEFILE_TEMPLATE,
            {
                "include_dirs": " ".join(
                    ["-I" + x for x in include_directories]
                ),
                "lib_dirs": " ".join(library_directories),
                "libs": " ".join(libraries),
                "program_name": program_name,
                "cross_compile": cross_compile
            }
        ), program_name
    except KeyError as ke:
        print("Arm makefile key error: {}".format(ke))
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
                "program_buffer_length": arm_config[
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
        "--build_arm",
        help="Build the ARM executable. Please insure this is on an ARM system"
        " and that Thrift with the CPP library is built. Thrift does not "
        "work for cross-compilation at the moment.",
        action="store_true"
    )
    parser.add_argument(
        "--simulation_mode",
        action="store_true"
    )
    parser.add_argument(
        "--arm_cross_compile",
        help="Cross-compile prefix for arm code",
        default=""
    )
    parser.add_argument(
        "--build_microblaze",
        help="Build the microblaze executable. Please use a system that the"
        " Xilinx SDK is installed and that the microblaze compiler is on "
        "your PATH",
        action="store_true"
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
    try:
        os.makedirs(ARM_BUILD_DIRECTORY)
    except FileExistsError:
        clean_build_directory(ARM_BUILD_DIRECTORY)
    try:
        os.makedirs(MICROBLAZE_BUILD_DIRECTORY)
    except FileExistsError:
        clean_build_directory(MICROBLAZE_BUILD_DIRECTORY)
    try:
        os.makedirs(MICROBLAZE_BUILD_SRC_DIRECTORY)
    except FileExistsError:
        clean_build_directory(MICROBLAZE_BUILD_SRC_DIRECTORY)
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
    try:
        os.mkdir(OUTPUT_DIRECTORY)
    except FileExistsError:
        pass

    with open(SYSTEM_CONFIG_HEADER, 'w') as system_config_out:
        system_config_out.write(system_config_header)
    shutil.copy2(SYSTEM_CONFIG_HEADER, OUTPUT_DIRECTORY)
    print("Generated {}/{}".format(
        OUTPUT_DIRECTORY, DEFAULT_SYSTEM_CONFIG_HEADER
    ))

    with open(ARM_CODE_OUT, 'w') as arm_code_file:
        arm_code_file.write(arm_code)
    shutil.copy2(ARM_CODE_OUT, OUTPUT_DIRECTORY)
    print("Generated {}/{}".format(
        OUTPUT_DIRECTORY, DEFAULT_ARM_CODE
    ))

    with open(ARM_HEADER_OUT, 'w') as arm_header_file:
        arm_header_file.write(arm_header)
    shutil.copy2(ARM_HEADER_OUT, OUTPUT_DIRECTORY)
    print("Generated {}/{}".format(
        OUTPUT_DIRECTORY, DEFAULT_ARM_HEADER
    ))

    with open(MICROBLAZE_CODE_OUT, 'w') as microblaze_code_file:
        microblaze_code_file.write(microblaze_code)
    shutil.copy2(MICROBLAZE_CODE_OUT, OUTPUT_DIRECTORY)
    print("Generated {}/{}".format(
        OUTPUT_DIRECTORY, DEFAULT_MICROBLAZE_CODE
    ))

    with open(MICROBLAZE_HEADER_OUT, 'w') as microblaze_header_file:
        microblaze_header_file.write(microblaze_header)
    shutil.copy2(MICROBLAZE_HEADER_OUT, OUTPUT_DIRECTORY)
    print("Generated {}/{}".format(
        OUTPUT_DIRECTORY, DEFAULT_MICROBLAZE_HEADER
    ))

    if args.compilation_config is not None:
        compilation_config = parse_compilation_config(args.compilation_config)
        microblaze_makefile, microblaze_sub_makefile, microblaze_program = (
            generate_microblaze_makefiles(compilation_config)
        )
        with open(MICROBLAZE_MAKEFILE, 'w') as microblaze_makefile_out:
            microblaze_makefile_out.write(microblaze_makefile)
        shutil.copy2(MICROBLAZE_MAKEFILE, OUTPUT_DIRECTORY)
        print("Generated {}/{}".format(
            OUTPUT_DIRECTORY, "makefile"
        ))

        with open(MICROBLAZE_SUB_MAKEFILE, 'w') as sub_makefile_out:
            sub_makefile_out.write(microblaze_sub_makefile)
        shutil.copy2(MICROBLAZE_SUB_MAKEFILE, OUTPUT_DIRECTORY)
        print("Generated {}/{}".format(
            OUTPUT_DIRECTORY, "subdir.mk"
        ))

        if args.build_microblaze:
            shutil.copy2(
                MICROBLAZE_ENCLAVE_LIBRARY, MICROBLAZE_BUILD_SRC_DIRECTORY
            )
            shutil.copy(LOAD_SCRIPT, MICROBLAZE_BUILD_DIRECTORY)
            microblaze_build = subprocess.call(
                shlex.split("make clean all"),
                cwd=MICROBLAZE_BUILD_DIRECTORY,
                stderr=subprocess.STDOUT
            )
            if microblaze_build != 0:
                print("Building microblaze code failed")
                sys.exit(-1)
            binary_gen = subprocess.call(
                shlex.split("mb-objcopy -O binary {0}.elf {0}.bin".format(
                    microblaze_program
                )),
                stderr=subprocess.STDOUT,
                cwd=MICROBLAZE_BUILD_DIRECTORY
            )
            if binary_gen != 0:
                print("Generating microblaze binary failed")
                sys.exit(-1)
            shutil.copy2(
                "{}/{}.bin".format(
                    MICROBLAZE_BUILD_DIRECTORY, microblaze_program
                ),
                os.getcwd()
            )
        arm_makefile, arm_program = generate_arm_makefile(
            compilation_config, cross_compile=args.arm_cross_compile
        )
        with open(ARM_MAKEFILE_OUT, 'w') as arm_makefile_out:
            arm_makefile_out.write(arm_makefile)
        shutil.copy2(ARM_MAKEFILE_OUT, OUTPUT_DIRECTORY)
        print("Generated {}/{}".format(
            OUTPUT_DIRECTORY, "Makefile"
        ))

        if args.build_arm:
            if args.simulation_mode:
                shutil.copy2(
                    ARM_ENCLAVE_LIBRARY_HEADER_SIMULATION,
                    ARM_BUILD_DIRECTORY + "/enclave_library.h"
                )
                shutil.copy2(ARM_ENCLAVE_LIBRARY_HEADER, ARM_BUILD_DIRECTORY)
            else:
                shutil.copy2(
                    ARM_ENCLAVE_LIBRARY_HEADER,
                    ARM_BUILD_DIRECTORY + "/enclave_library.h"
                )
            shutil.copy2(ARM_ENCLAVE_LIBRARY, ARM_BUILD_DIRECTORY)
            arm_build = subprocess.call(
                "make", cwd=ARM_BUILD_DIRECTORY, stderr=subprocess.STDOUT
            )
            if arm_build != 0:
                print("Building arm code failed")
                sys.exit(-1)
            shutil.copy2(
                "{}/{}".format(ARM_BUILD_DIRECTORY, arm_program), os.getcwd()
            )
