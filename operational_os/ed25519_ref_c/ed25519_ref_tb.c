#include "randombytes.h"
#include <string.h>
#include "stdio.h"
#include <stdlib.h>

/**
Code borrowed from SUPERCOP: https://bench.cr.yp.to/supercop.html
**/

// int crypto_sign(
//     unsigned char sm[192],
//     const unsigned char m[128],
//     const unsigned char sk[64]
//     );

int crypto_sign(
    unsigned char *sm,unsigned long long *smlen,
    const unsigned char *m,unsigned long long mlen,
    const unsigned char *sk
    );

int crypto_sign_keypair(unsigned char *pk,unsigned char *sk);

void randombytes(unsigned char *out,unsigned long long num){
     long long i;
     time_t t;
     srand((unsigned) time(&t));
     for(i=0; i<num; i++){
         out[i] = (unsigned char)rand();
     }
}

unsigned char message[256] = "test";
unsigned char pk[32] =
    {0x9d,0x7c,0xc8,0x34,0x8f,0x23,0x5c,0xb5,0x96,0xec,0xf1,0x1e,0x35,0xe2,
    0xd5,0x6f,0x99,0xdf,0xae,0x10,0x6a,0x47,0x8f,0x0f,0x4f,0xe6,0x2a,0x13,
    0x7c,0x06,0x07,0xdf};
unsigned char sk[64]  =
    {0x7f,0x91,0x53,0x07,0xee,0x01,0xf3,0xfa,0x77,0xa4,0xff,0xb0,0xe8,
    0xf2,0x95,0x7b,0xe2,0x0d,0x46,0xea,0x5c,0x55,0x63,0x84,0x16,0xff,
    0x2e,0x26,0x52,0xc9,0x88,0xd1,0x9d,0x7c,0xc8,0x34,0x8f,0x23,0x5c,
    0xb5,0x96,0xec,0xf1,0x1e,0x35,0xe2,0xd5,0x6f,0x99,0xdf,0xae,0x10,
    0x6a,0x47,0x8f,0x0f,0x4f,0xe6,0x2a,0x13,0x7c,0x06,0x07,0xdf};
unsigned char signature[192] = {0};


int main(){
    int i;
    unsigned long long signed_length = 0;
    // crypto_sign_keypair(pk, sk);
    printf("Public key:\n{");
    for(i=0; i<32; i++){
        if(i>0){
            printf(",");
        }
        printf("0x%02x", pk[i]);
    }
    printf("}\nSecret key:\n{");
    for(i=0; i<64; i++){
        if(i>0){
            printf(",");
        }
        printf("0x%02x", sk[i]);
    }
    printf("}\n");
    crypto_sign(signature, &signed_length, message, 256, sk);
    printf("Message:\n");
    for(i=0; i<128; i++){
        printf("%02x", message[i]);
    }
    printf("\nSigned message:\n{");
    for(i=0; i<signed_length; i++){
        if(i>0){
            printf(",");
        }
        printf("0x%02x", signature[i]);
    }
    printf("}\n");
	return 0;
}
