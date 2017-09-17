#include "string.h"
#include "secure_enclave_key_store_main.h"
//#include "ap_int.h"
#include <iostream>
#include "stdio.h"
#include <openssl/rand.h>
#include <openssl/aes.h>
#include <openssl/evp.h>
#include <openssl/opensslv.h>
#include <openssl/engine.h>
#include <openssl/modes.h>

using namespace std;

//bool aes_gcm_d(ap_uint<128> key,
//			   ap_uint<128> iv,
//			   ap_uint<128> *ct,
//			   unsigned int length,
//			   ap_uint<128> *pt,
//			   ap_uint<128> *aad,
//			   unsigned int aad_length,
//			   ap_uint<128> tag_in);
//
//ap_uint<128> aes_gcm_e(ap_uint<128> key,
//		       ap_uint<128> iv,
//			   ap_uint<128> *pt,
//			   unsigned int length,
//			   ap_uint<128> *ct,
//			   ap_uint<128> *aad,
//			   unsigned int aad_length);

int main(){
	ap_uint<128> key(0);
	ap_uint<128> iv(0);
	ap_uint<128> iv_tmp = iv;
	ap_uint<128> ct[0];
	ap_uint<128> pt[] = {
			ap_uint<128>(0)
	};
	ap_uint<128> pt_out[1];
	unsigned char key_ssl [] = {
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	};
	unsigned char iv_ssl [] = {
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	};
	unsigned char pt_ssl [] = {
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	};
	unsigned char ct_ssl[32];
	unsigned char ssl_tag_out[16];
	int ssl_len, i;


	cout << "Beginning simple test ------------------" << endl;

	ap_uint<128> tag = aes_gcm_e(key, iv, pt, 1, ct, 0, 0);

	printf("CT out: %s\n", ct[0].to_string(16).c_str());

	bool authenticated = aes_gcm_d(key, iv, ct, 1, pt_out, 0, 0, tag);

	if(!authenticated){
		cout << "Authentication failed" << endl;
		return -1;
	}

	if(pt_out[0] != pt[0]){
		cout << "PT does not match" << endl;
		return -2;
	}


	cout << "Beginning OpenSSL simple test ------------------ " << endl;

	EVP_CIPHER_CTX *ctx;

	ctx = EVP_CIPHER_CTX_new();

	EVP_EncryptInit_ex(ctx, EVP_aes_256_gcm(), NULL, NULL, NULL);

	EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_SET_IVLEN, 16, NULL);

	EVP_EncryptInit_ex(ctx, NULL, NULL, key_ssl, iv_ssl);

	EVP_EncryptUpdate(ctx, pt_ssl, &ssl_len, ct_ssl, 16);

	EVP_EncryptFinal_ex(ctx, ct_ssl + ssl_len, &ssl_len);

	EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_GET_TAG, 16, ssl_tag_out);

	EVP_CIPHER_CTX_free(ctx);

	printf("SSL tag out: 0x");
	for(i=0; i<16; i++){
		printf("%02x", ssl_tag_out[i]);
	}
	printf("\n");

	printf("SSL ct out: 0x");
	for(i=0; i<16; i++){
		printf("%02x", ct_ssl[i]);
	}
	printf("\n");

}
