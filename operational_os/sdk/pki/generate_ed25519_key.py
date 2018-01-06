#!/usr/bin/python3

import ed25519

if __name__ == "__main__":
    sk,vk = ed25519.create_keypair(entropy=os.urandom)
    
