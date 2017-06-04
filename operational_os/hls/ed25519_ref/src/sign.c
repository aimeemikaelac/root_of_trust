#include <string.h>
#include "crypto_sign.h"
//#include "crypto_hash_sha512.h"
#include "sha512.h"
#include "ge25519.h"

#define MICROBLAZE_MEM 32768

//int crypto_hash_sha512(unsigned char *out, unsigned char *in, unsigned int len){
//	return sha512(in, len, out);
//}

void _memcpy(unsigned char* dst, unsigned char* src, unsigned int len){
	int i;
	for(i=0; i<len; i++){
		dst[i] = src[i];
	}
}

//void _memcpy_char(unsigned char* dst, unsigned char* src, unsigned int len){
//	int i;
//	for(i=0; i<len; i++){
//		dst[i] = src[i];
//	}
//}

void _memset(unsigned char* dst, unsigned char val, unsigned int len){
	int i;
	for(i=0; i<len; i++){
		dst[i] = val;
	}
}

void _memmove(unsigned char *dst, unsigned char *src, unsigned int len){
	_memcpy(dst, src, len);
}

//int crypto_sign(
//    unsigned char *sm,unsigned long long *smlen,
//    const unsigned char *m,unsigned long long mlen,
//    const unsigned char *sk
//    )
//int crypto_sign(
//    unsigned char sm[192],
//    const unsigned char m[128],
//    const unsigned char sk[64]
//    )
int crypto_sign(
		unsigned char mem[MICROBLAZE_MEM],
		unsigned int num_blocks,
		unsigned char sk[64],
		unsigned char signature_out[64]
		)
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite port=signature_out
#pragma HLS INTERFACE s_axilite port=sk
#pragma HLS INTERFACE s_axilite port=num_blocks
#pragma HLS INTERFACE m_axi depth=32768 port=mem
#pragma HLS ALLOCATION instances=sha512_update_32 limit=1 function
#pragma HLS ALLOCATION instances=sha512_update_128 limit=1 function
#pragma HLS ALLOCATION instances=sha512_final limit=1 function
#pragma HLS ALLOCATION instances=sha512_init limit=1 function
#pragma HLS ALLOCATION instances=_memmove limit=1 function
  unsigned char pk[32];
  unsigned char az[64];
  unsigned char nonce[64];
  unsigned char hram[64];
  unsigned long long mlen=128;
  unsigned char signature[64] = {0};
  unsigned char temp_buf[128];
  int i, j;
  sc25519 sck, scs, scsk;
  ge25519 ger;
  sha512_context hash;

//  memmove(pk,sk + 32,32);
  _memmove(pk,sk + 32,32);
  /* pk: 32-byte public key A */

//  crypto_hash_sha512(az,sk,32);
  sha512_init(&hash);
  sha512_update_32(&hash, sk);
  sha512_final(&hash, az);

  az[0] &= 248;
  az[31] &= 127;
  az[31] |= 64;
  /* az: 32-byte scalar a, 32-byte randomizer z */

//  *smlen = mlen + 64;
//  memmove(sm + 64,m,mlen);
//  memmove(sm + 32,az + 32,32);
//  _memmove(sm + 64,m,mlen);
//  _memmove(sm + 32,az + 32,32);
  _memmove(signature + 32,az + 32,32);
  /* sm: 32-byte uninit, 32-byte z, mlen-byte m */

//  crypto_hash_sha512(nonce, sm+32, mlen+32);
  sha512_init(&hash);
//  sha512_update_128(&hash, sm+32);
  sha512_update_32(&hash, signature+32);
//  sha512_update_128(&hash, m);
  for(i=0; i<num_blocks; i++){
//	  _memcpy(temp_buf, mem + 128*i, 128);
	  for(j=0; j<128; j++){
		  temp_buf[j] = mem[128*i + j];
	  }
	  sha512_update_128(&hash, temp_buf);
  }
  sha512_final(&hash, nonce);
  /* nonce: 64-byte H(z,m) */

  sc25519_from64bytes(&sck, nonce);
  ge25519_scalarmult_base(&ger, &sck);
//  ge25519_pack(sm, &ger);
  ge25519_pack(signature, &ger);
  /* sm: 32-byte R, 32-byte z, mlen-byte m */
  
//  memmove(sm + 32,pk,32);
//  _memmove(sm + 32,pk,32);
  _memmove(signature + 32, pk, 32);
  /* sm: 32-byte R, 32-byte A, mlen-byte m */

//  crypto_hash_sha512(hram,sm,mlen + 64);
  sha512_init(&hash);
  sha512_update_32(&hash, signature);
  sha512_update_32(&hash, signature + 32);
//  sha512_update_128(&hash, m);
  for(i=0; i<num_blocks; i++){
//	_memcpy(temp_buf, mem + 128*i, 128);
    for(j=0; j<128; j++){
      temp_buf[j] = mem[128*i + j];
    }
	sha512_update_128(&hash, temp_buf);
  }
  sha512_final(&hash, hram);

  /* hram: 64-byte H(R,A,m) */

  sc25519_from64bytes(&scs, hram);
  sc25519_from32bytes(&scsk, az);
  sc25519_mul(&scs, &scs, &scsk);
  sc25519_add(&scs, &scs, &sck);
  /* scs: S = nonce + H(R,A,m)a */

//  sc25519_to32bytes(sm + 32,&scs);
  sc25519_to32bytes(signature + 32,&scs);
  /* sm: 32-byte R, 32-byte S, mlen-byte m */

//  _memcpy(sm, signature, 64);
//  _memcpy(sm + 32, , 32);
//  _memcpy(sm + 64, m, 128);
  _memcpy(signature_out, signature, 64);
  return 0;
}
