#!/usr/bin/python

import argparse
import os
import json
import shlex
import subprocess
import binascii
import shutil
import sys

#using pycryptodome for crypto here
from Cryptodome.PublicKey import RSA
from Cryptodome.Random import random
from Cryptodome.Cipher import AES

#use jinja2 for generating bif files from templates
from jinja2 import Template

def render_bif(bif_file, psk_file, ssk_file):
    with open(bif_file) as bif:
        bif_template = Template(bif.read())
        rendered_bif = bif_template.render(psk_file=psk_file, ssk_file=ssk_file)
        bif_out_file = os.path.dirname(bif_file) + "/" + \
                       os.path.basename(bif_file).split(".")[0] \
                       + ".bif"
        with open(bif_out_file, "w") as bif_out:
            bif_out.write(rendered_bif)
            return bif_out_file

def generate_boot_image(bootgen_path, bif_path, psk_hash_path, binary_path):
    call_str = "qemu-x86_64 {} -image {} -generate_hashes -efuseppkbits {} -arch zynqmp -log trace -w -o i {}".format(bootgen_path, bif_path, psk_hash_path, binary_path)
    call_tokens = shlex.split(call_str)
    call_dir = os.path.dirname(bif_path)
    call_process = subprocess.Popen(call_tokens, cwd=call_dir)
    call_process.wait()

if __name__ == "__main__":
    #TODO: unify default paths to use the --sdcard prefix
    parser = argparse.ArgumentParser()
    parser.add_argument("--bootgen",
                        help="Path to bootgen binary",
                        required=True)
    parser.add_argument("--reprovision",
                        help="Will reprovision the device even if the secure " "storage is present",
                        action="store_true")
    parser.add_argument("--secure_storage_file",
                        help="File to use as the secure storage. GCM tag will "
                        "be stored in a file with the same name and the "
                        "extension \".tag\" and the IV in a file with "
                        "the extension \".iv\"",
                        default="/mnt/sdcard/DEVICE_SECURE_STORAGE.bin")
    parser.add_argument("--recovery_os_bif_template",
                        help="Path to bif template to use for the recovery OS "
                        "in jinja template format",
                        required=True)
    parser.add_argument("--operational_os_bif_template",
                        help="Path to bif template to use for the operational " "OS in jinja template format",
                        required=True)
    parser.add_argument("--operational_os_binary",
                        help="Name of binary to store operational OS in.",
                        default="BOOT_operational.bin")
    parser.add_argument("--recovery_os_binary",
                        help="Name of binary to store recovery OS in.",
                        default="BOOT_recovery.bin")
    parser.add_argument("--provisioning_os_binary_stage_1",
                        help="Name of the binary that is the Stage 1 " "provisioning OS",
                        default="BOOT_provisioning_stage_1.bin")
    parser.add_argument("--provisioning_os_binary_stage_2",
                        help="Name of the binary that is the Stage 2 "
                        "provisioning OS",
                        default="BOOT_provisioning_stage_2.bin")
    parser.add_argument("--sdcard_path",
                        help="Path to where the boot partition of the SD card " "is mounted",
                        default="/mnt/sdcard/")
    parser.add_argument("--psk_efuse_hash",
                        help="File for bootgen to output the PSK hash too",
                        default="/mnt/sdcard/psk_efuse_hash.txt")
    parser.add_argument("--efuse_aes_file",
                        help="File to store AES eFuse key to",
                        default="/mnt/sdcard/aes_efuse_key.bin")
    parser.add_argument("--reboot",
                        help="Reboot using this script",
                        action='store_true')
    args = parser.parse_args()
    secure_storage_file = args.sdcard_path + "/" + args.secure_storage_file
    if os.path.exists(args.secure_storage_file) and not args.reprovision:
        print "Secure storage already exists. Assuming already provisioned. Aborting. Remove file to re-provision."
        sys.exit(-1)

    #generate RSA key
    print "Generating PSK"
    authentication_key = RSA.generate(4096)
    #generate initial ssk
    print "Generating SSK"
    secondary_private_key = RSA.generate(4096)
    #generate random eFuse AES key
    print "Generating eFuse AES Key"
    efuse_aes_key = binascii.a2b_hex("{0:064x}".format(random.getrandbits(256)))

    #write RSA keys in PEM format
    authentication_key_pem = authentication_key.exportKey()
    ssk_pem = secondary_private_key.exportKey()

    authentication_key_storage_file = args.sdcard_path + "/DEVICE_AUTHENTICATION_KEY.pem"
    ssk_storage_file = args.sdcard_path + "/SSK.pem"

    with open(authentication_key_storage_file, 'w') as auth_key_handle:
        print "Writing PSK to file"
        auth_key_handle.write(authentication_key_pem)

    with open(ssk_storage_file, 'w') as ssk_handle:
        print "Writing SSK to file"
        ssk_handle.write(ssk_pem)

    #render BIFs for boot images
    print "Rendering operational OS bif"
    rendered_operational_bif = render_bif(args.operational_os_bif_template,
                                          authentication_key_storage_file,
                                          ssk_storage_file)

    print "Rendering recovery OS bif"
    rendered_recovery_bif = render_bif(args.recovery_os_bif_template,
                                       authentication_key_storage_file,
                                       ssk_storage_file)

    #generate boot images
    print "Generating operational OS boot image"
    generate_boot_image(args.bootgen,
                        rendered_operational_bif,
                        args.psk_efuse_hash,
                        args.sdcard_path + "/" + args.operational_os_binary)

    print "Generating recovery OS boot image"
    generate_boot_image(args.bootgen,
                        rendered_recovery_bif,
                        args.psk_efuse_hash,
                        args.sdcard_path +"/" + args.recovery_os_binary)

    #write AES eFuse key to file
    with open(args.efuse_aes_file, 'w') as aes_file:
        print "Writing AES key to file"
        aes_file.write(efuse_aes_key)

    #create secure storage
    secure_storage_data = {}
    secure_storage_data["PSK"] = authentication_key_pem
    secure_storage_data["EFUSE_AES"] = binascii.hexlify(efuse_aes_key)

    #encrypt secure storage
    print "Encrypting secure storage data"
    secure_storage_str = json.dumps(secure_storage_data)
    secure_storage_iv = binascii.a2b_hex("{0:032x}".format(random.getrandbits(128)))
    gcm_cipher = AES.new(efuse_aes_key, AES.MODE_GCM, nonce=secure_storage_iv)
    secure_storage_ct = gcm_cipher.encrypt(secure_storage_str)
    secure_storage_tag = gcm_cipher.digest()

    #write encrypted secure storage
    secure_storage_iv_file = args.secure_storage_file + ".iv"
    secure_storage_tag_file = args.secure_storage_file + ".tag"

    with open(args.secure_storage_file, 'w') as secure_storage:
        print "Writing secure storage to file"
        secure_storage.write(secure_storage_ct)

    with open(secure_storage_iv_file, 'w') as iv:
        print "Writing secure storage IV to file"
        iv.write(secure_storage_iv)

    with open(secure_storage_tag_file, 'w') as tag:
        print "Writing secure storage GCM tag to file"
        tag.write(secure_storage_tag)

    #ensure all of the binaries are on the sdcard before overwriting the current
    #boot image
    print "Copying provisioning OS stage 1 boot image to SD card"
    shutil.copy(args.provisioning_os_binary_stage_1, args.sdcard_path)
    print "Copying provisioning OS stage 2 boot image to SD card"
    shutil.copy(args.provisioning_os_binary_stage_2, args.sdcard_path)

    #overwrite boot image with stage 2
    print "Overwriting current boot image with stage 2 boot image"
    shutil.copy(args.provisioning_os_binary_stage_2,
                args.sdcard_path + "/BOOT.BIN")

    if args.reboot:
        #reboot somehow. maybe run as root?
        print "Attemtping to reboot"
        subprocess.call(["reboot"])
