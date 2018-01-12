#!/usr/bin/python3

from jinja2 import Environment, FileSystemLoader
import random
import string
import argparse
import os

def get_random_hex_byte():
    characters = ["A","B","C","D","E","F"] + list(string.digits)
    hex_byte = "0x{}{}".format(
        random.SystemRandom().choice(characters),
        random.SystemRandom().choice(characters)
    )
    return hex_byte

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

def generate_header_data(static_data_length):
    static_data = ""
    for byte in range(static_data_length):
        if byte % 4 == 0:
            static_data += "\t"
        static_data += get_random_hex_byte()
        static_data += ", "
        if byte % 4 == 3:
            static_data += "\n"
    return static_data

def render_header(template, static_data, static_length):
    return render_template(
        template,
        {
            "static_data":static_data,
            "static_data_size":static_length
        }
    )

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--size",
        help="Length of static data",
        type=int,
        required=True
    )
    parser.add_argument(
        "--template_file",
        help="Header jinja2 template",
        required=True
    )
    parser.add_argument(
        "--output_file",
        help="File to output rendered header to",
        required=True
    )
    args = parser.parse_args()
    static_data = generate_header_data(args.size)
    rendered_header = render_header(args.template_file, static_data, args.size)
    with open(args.output_file, "w") as output_file:
        output_file.write(rendered_header)
