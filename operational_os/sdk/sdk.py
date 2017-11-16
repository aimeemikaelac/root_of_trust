#!/usr/bin/python3

import os
import sys
import argparse
from code_generator import *

DEFAULT_ARM_TEMPLATE = "arm_code.c.jinja"
DEFAULT_MICROBLAZE_TEMPLATE = "microblaze.c.jinja"
DEFAULT_ARM_HEADER_TEMPLATE = "arm_code.h.jinja"
DEFAULT_MICROBLAZE_HEADER_TEMPLATE = "microblaze.h.jinja"

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
    microblaze_code, microblaze_header, arm_code, arm_header = generate_code(
        MICROBLAZE_TEMPLATE,
        ARM_TEMPLATE,
        MICROBLAZE_HEADER_TEMPLATE,
        ARM_HEADER_TEMPLATE
        args.function_definitions,
        args.arm_header_out,
        args.microblaze_header_out,
        parse_system_config(args.system_configuration)
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
