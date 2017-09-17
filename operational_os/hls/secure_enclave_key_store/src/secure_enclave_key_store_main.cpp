#include "string.h"
#include "secure_enclave_key_store_main.h"
#include <iostream>
//#include "ap_int.h"
//#include "aes.h"
//#include "aes_wrap.h"

using namespace std;

ap_uint<128> char_16_to_uint_128(unsigned char array[16]){
	int i;
	ap_uint<128> out(0);
	for(i=0; i<16; i++){
		out = out.concat(ap_uint<8>(array[i]));
	}
	return out;
}

ap_uint<128> extract_user_key(ap_uint<128> user_key_raw){
//	ap_uint<4> key1 = user_key_raw.range(3,0);
//	ap_uint<4> key2 = user_key_raw.range(7,4);
//	ap_uint<4> key3 = user_key_raw.range(11,8);
//	ap_uint<4> key4 = user_key_raw.range(15,12);
//	ap_uint<4> key5 = user_key_raw.range(19,16);
//	ap_uint<4> key6 = user_key_raw.range(23,20);
	ap_uint<128> out = (ap_uint<104>(0), user_key_raw(23,0));
	return out;
}

/*
 * Step 1: Read encrypted header 1 && tag
 * 2: read encrypted header 2 && tag
 * 3: read the seal key
 * 4: generate a new seal key
 * 5: check which header is correct by checking the hmac using the seal key
 * 6: decrypt the correct header
 * 7: copy to new header
 * 8: increment count in header
 * 9: encrypt new header and write out under new seal key
 * 10: output new seal key
 * 11: compare count; if too high, abort
 * 12: compare input pin to pin in header
 * 13: if pin incorrect, abort
 * 14: if pin correct, write new header out with count set to 0
 * 15: if pin correct, generate derived key from pin and key in the header
 *
 *
 */




bool secure_enclave_key_store(ap_uint<128> iv,
							  ap_uint<128> encrypted_header_old[ENCRYPTED_HEADER_SIZE/16],
							  ap_uint<256> tag_header_old,
							  ap_uint<128> encrypted_header_new[ENCRYPTED_HEADER_SIZE/16],
							  ap_uint<256> tag_header_new,
							  ap_uint<128> *user_key,
							  ap_uint<128> *master_key_in,
							  ap_uint<128> *derived_key_out,
							  bool *derived_key_valid,
							  ap_uint<128> *tag_out,
							  ap_uint<128> encrypted_header_out[ENCRYPTED_HEADER_SIZE/16],
							  ap_uint<128> *master_key_out,
							  ap_uint<128> *iv_out,
							  ap_uint<128> encrypted_header_out_after_pin[ENCRYPTED_HEADER_SIZE/16],
							  ap_uint<256> *tag_out_after_pin){
	int i, success;
	bool decrypted_new_header = false;
	ap_uint<128> master_key_old_storage;
	ap_uint<128> iv_old_storage;
	ap_uint<128> user_key_storage;
	ap_uint<128> derived_key_storage;
	ap_uint<128> encrypted_header_old_storage[ENCRYPTED_HEADER_SIZE/16];
	ap_uint<128> encrypted_header_new_storage[ENCRYPTED_HEADER_SIZE/16];
	ap_uint<256> tag_header_old_storage;
	ap_uint<256> tag_header_new_storage;
	ap_uint<256> tag_header_out_storage;
	ap_uint<128> decrypted_header_storage[DECRYPTED_HEADER_SIZE/16];
	ap_uint<128> encrypted_header_out_storage[ENCRYPTED_HEADER_SIZE/16];
	ap_uint<128> iv_new_storage;
	ap_uint<128> master_key_new_storage;
	ap_uint<128> counter;


	//Read old encrypted header
	for(i=0; i<ENCRYPTED_HEADER_SIZE/16; i++){
		encrypted_header_old_storage[i] = encrypted_header_old[i];
	}


	//Read new encrypted header
	for(i=0; i<ENCRYPTED_HEADER_SIZE/16; i++){
		encrypted_header_new_storage[i] = encrypted_header_new[i];
	}

	//Read old header
	tag_header_old_storage = tag_header_old;

	//Read new header
	tag_header_new_storage = tag_header_new;

	//Read iv
	iv_old_storage = iv;

	//Read master key
	master_key_old_storage = master_key_in;


	success = aes_ctr_hmac_decrypt(tag_header_old,
								   encrypted_header_old_storage,
								   ENCRYPTED_HEADER_SIZE/16,
								   master_key_old_storage,
								   iv_old_storage,
								   decrypted_header_storage);

	if(success == false){
		decrypted_new_header = true;
		success = aes_ctr_hmac_decrypt(tag_header_new,
									   encrypted_header_new_storage,
									   ENCRYPTED_HEADER_SIZE/16,
									   master_key_old_storage,
									   iv_old_storage,
									   decrypted_header_storage);
		if(success == false){
			//TODO: in this case, we should actually go into a bootstrapping flow
			return true;
		}
	}
	//increment counter
	counter = decrypted_header_storage[COUNTER_OFFSET];
	counter++;
	decrypted_header_storage[COUNTER_OFFSET] = counter;


	//7. Generate a new master key and IV
	//TODO: for now, just reuse old key/IV

	iv_new_storage = iv_old_storage;
	master_key_new_storage = master_key_old_storage;

	//8. Re-encrypt the authenticated decrypted header under new key to get header C, generate new authentication tag C
	tag_header_out_storage = aes_ctr_hmac_encrypt(decrypted_header_storage,
												  DECRYPTED_HEADER_SIZE/16,
												  encrypted_header_out_storage,
												  master_key_new_storage,
												  iv_new_storage);

	for(i=0; i<ENCRYPTED_HEADER_SIZE/16; i++){
		encrypted_header_out[i] = encrypted_header_new_storage[i];
	}
	*tag_out = tag_header_out_storage;

	//9. Send encrypted header C and tag C to CPU to write to storage, signal which of the headers was decrypted succesfully

	*master_key_out = master_key_new_storage;

	iv_out = iv_new_storage;

	//if counter is too high, abort
	//else, check user pin
	if(counter > 5){
		return true;
	} else{
		user_key_storage = user_key;
		ap_uint<128> user_key_stored = decrypted_header_storage[USER_KEY_OFFSET];
		//if user pin is correct, create derived key. also reset counter to 0
		if(user_key_stored == user_key_storage){
			ap_uint<128> wrapped_key = decrypted_header_storage[WRAPPED_KEY_OFFSET];
			derived_key_out = wrapped_key ^ user_key_stored;
			decrypted_header_storage[COUNTER_OFFSET] = 0;
			ap_uint<256> tag_pin = aes_ctr_hmac_encrypt(decrypted_header_storage,
													    DECRYPTED_HEADER_SIZE/16,
														encrypted_header_out_storage,
														master_key_new_storage,
														iv_new_storage);
			encrypted_header_out_after_pin = encrypted_header_new_storage;
			*tag_out_after_pin = tag_pin;
		}
		return true;
	}
}

bool aes_ctr_hmac_decrypt(ap_uint<128> tag,
						  ap_uint<128> *data,
						  int data_length,
						  ap_uint<128> key,
						  ap_uint<128> iv,
						  ap_uint<128> *out){
	int i;
	ap_uint<128> counter = iv;
	ap_uint<128> encrypted_counter;
	ap_uint<128> current_tag = hmac(key, data, data_length);
	if(current_tag != tag){
		return false;
	}
	for(i=0; i<data_length; i++){
		aes(&counter, &key, &encrypted_counter);
		out[i] = encrypted_counter ^ data[i];
		counter++;
	}
	return true;
}

ap_uint<256> aes_ctr_hmac_encrypt(ap_uint<128> *data,
								  int data_length,
								  ap_uint<128> *out,
								  ap_uint<128> key,
								  ap_uint<128> iv){
	int i;
	ap_uint<128> counter = iv;
	ap_uint<128> encrypted_counter;
	for(i=0; i<data_length; i++){
		aes(&counter, &key, &encrypted_counter);
		out[i] = encrypted_counter ^ data[i];
		counter++;
	}
	return hmac(key, out, data_length);
}

const unsigned int SHA256::sha256_k[64] = //UL = uint32
            {0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
             0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
             0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
             0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
             0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
             0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
             0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
             0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
             0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
             0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
             0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
             0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
             0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
             0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
             0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
             0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2};

void SHA256::transform(const unsigned char *message, unsigned int block_nb)
{
    uint32 w[64];
    uint32 wv[8];
    uint32 t1, t2;
    const unsigned char *sub_block;
    int i;
    int j;
    for (i = 0; i < (int) block_nb; i++) {
        sub_block = message + (i << 6);
        for (j = 0; j < 16; j++) {
            SHA2_PACK32(&sub_block[j << 2], &w[j]);
        }
        for (j = 16; j < 64; j++) {
            w[j] =  SHA256_F4(w[j -  2]) + w[j -  7] + SHA256_F3(w[j - 15]) + w[j - 16];
        }
        for (j = 0; j < 8; j++) {
            wv[j] = m_h[j];
        }
        for (j = 0; j < 64; j++) {
            t1 = wv[7] + SHA256_F2(wv[4]) + SHA2_CH(wv[4], wv[5], wv[6])
                + sha256_k[j] + w[j];
            t2 = SHA256_F1(wv[0]) + SHA2_MAJ(wv[0], wv[1], wv[2]);
            wv[7] = wv[6];
            wv[6] = wv[5];
            wv[5] = wv[4];
            wv[4] = wv[3] + t1;
            wv[3] = wv[2];
            wv[2] = wv[1];
            wv[1] = wv[0];
            wv[0] = t1 + t2;
        }
        for (j = 0; j < 8; j++) {
            m_h[j] += wv[j];
        }
    }
}

ap_uint<512> gen_opad(){
	int i;
	ap_uint<8> out("0x5c", 16);
	//start at 1 since we initialize the first byte
	for(i=1; i<64; i++){
		out = out.concat(ap_uint<8>("0x5c", 16));
	}
	return out;
}

ap_uint<512> gen_ipad(){
	int i;
	ap_uint<8> out("0x36", 16);
	//start at 1 since we initialize the first byte
	for(i=1; i<64; i++){
		out = out.concat(ap_uint<8>("0x36", 16));
	}
	return out;
}

void ap_uint_to_char_array(ap_uint<512> in, unsigned char *out){
	int num_bytes = sizeof(in);
	int num_bits = in.length();
	int i;
	unsigned char current;
	for(i=0; i<num_bytes; i++){
		if(i == (num_bytes - 1)){
			current = (char)(in.range(num_bits - 1, i*8));
		} else{
			current = (char)(in.range((i*8)+7, i*8));
		}
		out[i] = current;
	}
}

void ap_uint_to_char_array(ap_uint<128> in, unsigned char *out){
	int num_bytes = sizeof(in);
	int num_bits = in.length();
	int i;
	unsigned char current;
	for(i=0; i<num_bytes; i++){
		if(i == (num_bytes - 1)){
			current = (char)(in.range(num_bits - 1, i*8));
		} else{
			current = (char)(in.range((i*8)+7, i*8));
		}
		out[i] = current;
	}
}

ap_uint<256> char_array_to_ap_uint(unsigned char *in, int length){
	int i;
	ap_uint<8> out(in[length-1]);
	for(i=length-2; i>=0; i--){
		out = out.concat(ap_uint<8>(in[i]));
	}
	return out;
}

ap_uint<256> hmac(ap_uint<128> key_in, ap_uint<128> *message, int message_length){
	unsigned char i_pad_char[512/8];
	unsigned char o_pad_char[512/8];
	unsigned char inner_hash[SHA256::DIGEST_SIZE];
	unsigned char outer_hash[SHA256::DIGEST_SIZE];
	unsigned char hmac[SHA256::DIGEST_SIZE];
	unsigned char message_buf[16];
	SHA256 sha256;
	int i;
	//pad key to 512 bits
	ap_uint<512> key = key_in.concat(ap_uint<384>(0));
	ap_uint<512> ipad = gen_ipad();
	ap_uint<512> opad = gen_opad();
	//generate pads
	ap_uint<512> o_key_pad = opad ^ key;
	ap_uint<512> i_key_pad = ipad ^ key;
	ap_uint_to_char_array(i_key_pad, i_pad_char);
	ap_uint_to_char_array(o_key_pad, o_pad_char);
	//calculate inner hash
	sha256.init();
	sha256.update(i_pad_char, sizeof(i_key_pad));
	for(i=0; i<message_length; i++){
		ap_uint_to_char_array(message[i], message_buf);
		sha256.update(message_buf, 16);
	}
	sha256.final(inner_hash);
	//calculate outer hash
	sha256.init();
	sha256.update(o_pad_char, sizeof(o_key_pad));
	sha256.update(inner_hash, SHA256::DIGEST_SIZE);
	sha256.final(hmac);
	return char_array_to_ap_uint(hmac, SHA256::DIGEST_SIZE);
}


void SHA256::init()
{
    m_h[0] = 0x6a09e667;
    m_h[1] = 0xbb67ae85;
    m_h[2] = 0x3c6ef372;
    m_h[3] = 0xa54ff53a;
    m_h[4] = 0x510e527f;
    m_h[5] = 0x9b05688c;
    m_h[6] = 0x1f83d9ab;
    m_h[7] = 0x5be0cd19;
    m_len = 0;
    m_tot_len = 0;
}

void SHA256::update(const unsigned char *message, unsigned int len)
{
    unsigned int block_nb;
    unsigned int new_len, rem_len, tmp_len;
    const unsigned char *shifted_message;
    tmp_len = SHA224_256_BLOCK_SIZE - m_len;
    rem_len = len < tmp_len ? len : tmp_len;
    memcpy(&m_block[m_len], message, rem_len);
    if (m_len + len < SHA224_256_BLOCK_SIZE) {
        m_len += len;
        return;
    }
    new_len = len - rem_len;
    block_nb = new_len / SHA224_256_BLOCK_SIZE;
    shifted_message = message + rem_len;
    transform(m_block, 1);
    transform(shifted_message, block_nb);
    rem_len = new_len % SHA224_256_BLOCK_SIZE;
    memcpy(m_block, &shifted_message[block_nb << 6], rem_len);
    m_len = rem_len;
    m_tot_len += (block_nb + 1) << 6;
}

void SHA256::final(unsigned char *digest)
{
    unsigned int block_nb;
    unsigned int pm_len;
    unsigned int len_b;
    int i;
    block_nb = (1 + ((SHA224_256_BLOCK_SIZE - 9)
                     < (m_len % SHA224_256_BLOCK_SIZE)));
    len_b = (m_tot_len + m_len) << 3;
    pm_len = block_nb << 6;
    memset(m_block + m_len, 0, pm_len - m_len);
    m_block[m_len] = 0x80;
    SHA2_UNPACK32(len_b, m_block + pm_len - 4);
    transform(m_block, block_nb);
    for (i = 0 ; i < 8; i++) {
        SHA2_UNPACK32(m_h[i], &digest[i << 2]);
    }
}




int os_memcmp(char* one, char* two, int length){
	int i;
	for(i=0; i<length; i++){
		if(one[i] != two[i]){
			return -1;
		}
	}
	return 0;
}

void os_memset(unsigned char* dst, unsigned char val, unsigned int length){
	int i;
	for(i=0; i<length; i++){
		dst[i] = val;
	}
}
void os_memcpy(unsigned char* dst, unsigned char* src, unsigned int length){
	int i;
	for(i=0; i<length; i++){
		dst[i] = src[i];
	}
}

bool check_bit(unsigned char x[16], int bit){
	int byte = bit/8;
	int bit_in_byte = bit%8;
	unsigned char bitmask = 0x80 >> bit_in_byte;
	return bitmask & x[byte];
}

void xor_128(unsigned char x[16], unsigned char y[16], unsigned char out[16]){
	int i;
	for(i=0; i<16; i++){
		out[i] = x[i] ^ y[i];
	}
}

void rightshift_128(unsigned char x[16], unsigned char out[16]){
	int i;
	bool increment_next = false, increment_current = false;
	for(i=0; i<16; i++){
		increment_current = increment_next;
		if(x[i] & 0x01){
			increment_next = true;
		} else{
			increment_next = false;
		}
		out[i] = x[i] >> 1;
		if(increment_current){
			out[i] |= 0x80;
		}
	}
}

//void gf_mult(unsigned char x[16], unsigned char y[16], unsigned char z[16]){
//	int i;
//	unsigned char v[16];
//	os_memset(z, 0, 16);
//	os_memcpy(v, x, 16);
//	for(i=0; i<128; i++){
//		if(check_bit(y, i)){
//			xor_128(z, v, z);
//		}
//		if(!check_bit(y, 127)){
//			rightshift_128(v, v);
//			xor_128(v, (unsigned char*)R, v);
//		}
//	}
//}

ap_uint<128> gf_mult(ap_uint<128> x, ap_uint<128> y){
	int i;
	ap_uint<128> v = x;
	ap_uint<128> z = 0;
	for(i=0; i<128; i++){
		if(y.test(i)){
			z = z^v;
		}
		if(!y.test(127)){
			v = v >> 1;
		} else {
			v = (v >> 1) ^ R;
		}
	}
	return z;
}

/*
 * Compute GHASH(H, A, C)
 *
 * h - the H hash key - AES(aes_key, 0)
 * d - the data to be ghashed - either the current block of authenticated data or blcok of ciphertext
 *	   zero-padding handled by caller
 * x_prev - the previous ghash output
 */
ap_uint<128> ghash_iteration(ap_uint<128> h, ap_uint<128> d, ap_uint<128> x_prev){
	return gf_mult((x_prev ^ d), h);
}

ap_uint<128> init_gcm_counter(ap_uint<128> hash_key, ap_uint<128> iv){
	//perform GHASH(H, {}, IV) -> m=1, n=1 and both IV and {} are 128 bits, so no padding needed
	ap_uint<128> zero(0); //1st ghash result, i=0
	ap_uint<128> ghash_2 = ghash_iteration(hash_key, zero, zero); //ghash of i=m=1
	cout << "init counter iv in: " << iv.to_string(16) << endl;
	ap_uint<128> ghash_3 = ghash_iteration(hash_key, iv, ghash_2); //ghash of i=m+n=2
	cout << "init counter iv out: " << iv.to_string(16) << endl;
	ap_uint<128> ghash_out = ghash_iteration(hash_key, (ap_uint<64>(128),ap_uint<64>(128)), ghash_3); //ghash of i=m+n+1=3, X_m+n+1
	return ghash_out;
}

ap_uint<128> incr(ap_uint<128> counter){
	ap_uint<32> modulus_counter = counter(31, 0);
	modulus_counter = (modulus_counter + 1) % 2^32;
	ap_uint<32> counter_out = counter;
	counter_out(31, 0) = modulus_counter;
	return counter_out;
}

ap_uint<128> init_ghash(ap_uint<128> key){
	ap_uint<128> zero(0);
	ap_uint<128> hash_key;
	aes(&zero, &key, &hash_key);
	return hash_key;
}

void aad_ghash(ap_uint<128> key,
					   ap_uint<128> *hash_key_out,
					   ap_uint<128> *ghash_out,
					   ap_uint<128> *aad,
					   unsigned int aad_length){
	int i, m=aad_length;
	ap_uint<128> ghash_prev(0);
	ap_uint<128> hash_key = init_ghash(key);

	for(i=1; i<=m; i++){
		ghash_prev = ghash_iteration(hash_key, aad[i], ghash_prev);
	}
	*ghash_out = ghash_prev;
	*hash_key_out = hash_key;
}


void aes_gcm_cipher(ap_uint<128> key,
					ap_uint<128> *data_in,
					ap_uint<128> *data_out,
					unsigned int length,
					ap_uint<128> counter,
					ap_uint<128> hash_key,
					ap_uint<128> *ghash_prev,
					bool encrypt){
	int encrypt_iterations = 0;
	ap_uint<128> encrypted_counter_out, current_ct;
	for(encrypt_iterations=0; encrypt_iterations<length; encrypt_iterations++){
		counter = incr(counter);
		aes(&counter, &key, &encrypted_counter_out);
		current_ct = encrypted_counter_out ^ data_in[encrypt_iterations];
		data_out[encrypt_iterations] = current_ct;
		if(encrypt){
			*ghash_prev = ghash_iteration(hash_key, current_ct, *ghash_prev);
		} else{
			*ghash_prev = ghash_iteration(hash_key, data_in[encrypt_iterations], *ghash_prev);
		}
	}
}

ap_uint<128> finalize_ghash(unsigned int aad_length,
							unsigned int data_length,
							ap_uint<128> hash_key,
							ap_uint<128> ghash_prev,
							ap_uint<128> encrypted_counter_zero){
	ap_uint<64> aad_bits = 128*aad_length;
	ap_uint<64> ct_bits = 128*data_length;
	ap_uint<128> ghash_final_in = (aad_bits,ct_bits);
	ap_uint<128> ghash_final_out = ghash_iteration(hash_key, ghash_final_in, ghash_prev);

	//final xor to get auth tag
	ap_uint<128> auth_tag = ghash_final_out ^ encrypted_counter_zero;
	return auth_tag;
}

bool aes_gcm_d(ap_uint<128> key,
			   ap_uint<128> iv,
			   ap_uint<128> *ct,
			   unsigned int length,
			   ap_uint<128> *pt,
			   ap_uint<128> *aad,
			   unsigned int aad_length,
			   ap_uint<128> tag_in){
	ap_uint<128> hash_key;
	ap_uint<128> encrypted_counter_zero(0);
	ap_uint<128> ghash_prev(0);

	//authenticate the aad and generate the hash key
	aad_ghash(key, &hash_key, &ghash_prev, aad, aad_length);

	//initialize the GCM counter
	ap_uint<128> counter = init_gcm_counter(hash_key, iv);

	//get the encrypted counter 0 for the final authentication xor
	aes(&counter, &key, &encrypted_counter_zero);

	//decrypt cipher text and continue authentication
	//since this is essentially CTR mode, decryption is the same as encrypting the plaintext
	aes_gcm_cipher(key, ct, pt, length, counter, hash_key, &ghash_prev, false);
	//finalize ghash
	ap_uint<128> auth_tag = finalize_ghash(aad_length, length, hash_key, ghash_prev, encrypted_counter_zero);
	cout << "Decryption auth tag: " << auth_tag.to_string(16) << endl;
	return auth_tag == tag_in;
}

/*
 * performs aes gcm on arrays of 128 bits blocks of plaintext and additional
 * authenticated data (aad). any padding is handled by the caller
 */
ap_uint<128> aes_gcm_e(ap_uint<128> key,
		       ap_uint<128> iv,
			   ap_uint<128> *pt,
			   unsigned int length,
			   ap_uint<128> *ct,
			   ap_uint<128> *aad,
			   unsigned int aad_length){
	ap_uint<128> hash_key;
	ap_uint<128> encrypted_counter_zero(0);
	ap_uint<128> ghash_prev(0);

	cout << "IV in: " << iv.to_string(16) << endl;

	//authenticate the aad and generate the hash key
	aad_ghash(key, &hash_key, &ghash_prev, aad, aad_length);

	//initialize the GCM counter
	ap_uint<128> counter = init_gcm_counter(hash_key, iv);

	//get the encrypted counter 0 for the final authentication xor
	aes(&counter, &key, &encrypted_counter_zero);

	//generate cipher text and continue authentication
	aes_gcm_cipher(key, pt, ct, length, counter, hash_key, &ghash_prev, true);
	//finalize ghash
	ap_uint<128> auth_tag = finalize_ghash(aad_length, length, hash_key, ghash_prev, encrypted_counter_zero);
	return auth_tag;
}


//static void inc32(u8 *block)
//{
//	u32 val;
//	val = WPA_GET_BE32(block + AES_BLOCK_SIZE - 4);
//	val++;
//	WPA_PUT_BE32(block + AES_BLOCK_SIZE - 4, val);
//}
//
//
//static void xor_block(u8 *dst, const u8 *src)
//{
////	u32 *d = (u32 *) dst;
////	u32 *s = (u32 *) src;
////	*d++ ^= *s++;
////	*d++ ^= *s++;
////	*d++ ^= *s++;
////	*d++ ^= *s++;
//	int i;
//	u8 *d = (u8 *)dst;
//	u8 *s = (u8 *)src;
//	for(i=0; i<16; i++){
//		*d++ ^= *s++;
//	}
////	int i;
////	for(i=1; i<16; i++){
////		dst[i] = dst[i-1] ^ src[i-1];
////	}
//}
//
//
//static void shift_right_block(u8 *v)
//{
//	u32 val;
//
//	val = WPA_GET_BE32(v + 12);
//	val >>= 1;
//	if (v[11] & 0x01)
//		val |= 0x80000000;
//	WPA_PUT_BE32(v + 12, val);
//
//	val = WPA_GET_BE32(v + 8);
//	val >>= 1;
//	if (v[7] & 0x01)
//		val |= 0x80000000;
//	WPA_PUT_BE32(v + 8, val);
//
//	val = WPA_GET_BE32(v + 4);
//	val >>= 1;
//	if (v[3] & 0x01)
//		val |= 0x80000000;
//	WPA_PUT_BE32(v + 4, val);
//
//	val = WPA_GET_BE32(v);
//	val >>= 1;
//	WPA_PUT_BE32(v, val);
//}
//
//
///* Multiplication in GF(2^128) */
//static void gf_mult(const u8 *x, const u8 *y, u8 *z)
//{
//	u8 v[16];
//	int i, j;
//
//	os_memset(z, 0, 16); /* Z_0 = 0^128 */
//	os_memcpy((unsigned char*)v, (unsigned char*)y, 16); /* V_0 = Y */
//
//	for (i = 0; i < 16; i++) {
//		for (j = 0; j < 8; j++) {
//			if (x[i] & BIT(7 - j)) {
//				/* Z_(i + 1) = Z_i XOR V_i */
//				xor_block(z, v);
//			} else {
//				/* Z_(i + 1) = Z_i */
//			}
//
//			if (v[15] & 0x01) {
//				/* V_(i + 1) = (V_i >> 1) XOR R */
//				shift_right_block(v);
//				/* R = 11100001 || 0^120 */
//				v[0] ^= 0xe1;
//			} else {
//				/* V_(i + 1) = V_i >> 1 */
//				shift_right_block(v);
//			}
//		}
//	}
//}
//
//
//static void ghash_start(u8 *y)
//{
//	/* Y_0 = 0^128 */
//	os_memset(y, 0, 16);
//}
//
//
//static void ghash(const u8 *h, const u8 *x, size_t xlen, u8 *y)
//{
//	size_t m, i;
//	const u8 *xpos = x;
//	u8 tmp[16];
//
//	m = xlen / 16;
//
//	for (i = 0; i < m; i++) {
//		/* Y_i = (Y^(i-1) XOR X_i) dot H */
//		xor_block(y, xpos);
//		xpos += 16;
//
//		/* dot operation:
//		 * multiplication operation for binary Galois (finite) field of
//		 * 2^128 elements */
//		gf_mult(y, h, tmp);
//		os_memcpy((unsigned char*)y, (unsigned char*)tmp, 16);
//	}
//
//	if (x + xlen > xpos) {
//		/* Add zero padded last block */
//		size_t last = x + xlen - xpos;
//		os_memcpy((unsigned char*)tmp, (unsigned char*)xpos, last);
//		os_memset(tmp + last, 0, sizeof(tmp) - last);
//
//		/* Y_i = (Y^(i-1) XOR X_i) dot H */
//		xor_block(y, tmp);
//
//		/* dot operation:
//		 * multiplication operation for binary Galois (finite) field of
//		 * 2^128 elements */
//		gf_mult(y, h, tmp);
//		os_memcpy((unsigned char*)y, (unsigned char*)tmp, 16);
//	}
//
//	/* Return Y_m */
//}
//
//
//static void aes_gctr(void *aes, const u8 *icb, const u8 *x, size_t xlen, u8 *y)
//{
//	size_t i, n, last;
//	u8 cb[AES_BLOCK_SIZE], tmp[AES_BLOCK_SIZE];
//	const u8 *xpos = x;
//	u8 *ypos = y;
//
//	if (xlen == 0)
//		return;
//
//	n = xlen / 16;
//
//	os_memcpy((unsigned char*)cb, (unsigned char*)icb, AES_BLOCK_SIZE);
//	/* Full blocks */
//	for (i = 0; i < n; i++) {
//		aes_encrypt(aes, cb, ypos);
//		xor_block(ypos, xpos);
//		xpos += AES_BLOCK_SIZE;
//		ypos += AES_BLOCK_SIZE;
//		inc32(cb);
//	}
//
//	last = x + xlen - xpos;
//	if (last) {
//		/* Last, partial block */
//		aes_encrypt(aes, cb, tmp);
//		for (i = 0; i < last; i++)
//			*ypos++ = *xpos++ ^ tmp[i];
//	}
//}
//
//
//static void * aes_gcm_init_hash_subkey(const u8 *key, size_t key_len, u8 *H)
//{
//	void *aes;
//
//	aes = aes_encrypt_init(key, key_len);
////	if (aes == NULL)
////		return NULL;
//
//	/* Generate hash subkey H = AES_K(0^128) */
//	os_memset(H, 0, AES_BLOCK_SIZE);
//	aes_encrypt(aes, H, H);
////	wpa_hexdump_key(MSG_EXCESSIVE, "Hash subkey H for GHASH",
////			H, AES_BLOCK_SIZE);
//	return aes;
//}
//
//
//static void aes_gcm_prepare_j0(const u8 *iv, size_t iv_len, const u8 *H, u8 *J0)
//{
//	u8 len_buf[16];
//
//	if (iv_len == 12) {
//		/* Prepare block J_0 = IV || 0^31 || 1 [len(IV) = 96] */
//		os_memcpy((unsigned char*)J0, (unsigned char*)iv, iv_len);
//		os_memset(J0 + iv_len, 0, AES_BLOCK_SIZE - iv_len);
//		J0[AES_BLOCK_SIZE - 1] = 0x01;
//	} else {
//		/*
//		 * s = 128 * ceil(len(IV)/128) - len(IV)
//		 * J_0 = GHASH_H(IV || 0^(s+64) || [len(IV)]_64)
//		 */
//		ghash_start(J0);
//		ghash(H, iv, iv_len, J0);
//		WPA_PUT_BE64(len_buf, 0);
//		WPA_PUT_BE64(len_buf + 8, iv_len * 8);
//		ghash(H, len_buf, sizeof(len_buf), J0);
//	}
//}
//
//
//static void aes_gcm_gctr(void *aes, const u8 *J0, const u8 *in, size_t len,
//			 u8 *out)
//{
//	u8 J0inc[AES_BLOCK_SIZE];
//
//	if (len == 0)
//		return;
//
//	os_memcpy((unsigned char*)J0inc, (unsigned char*)J0, AES_BLOCK_SIZE);
//	inc32(J0inc);
//	aes_gctr(aes, J0inc, in, len, out);
//}
//
//
//static void aes_gcm_ghash(const u8 *H, const u8 *aad, size_t aad_len,
//			  const u8 *crypt, size_t crypt_len, u8 *S)
//{
//	u8 len_buf[16];
//
//	/*
//	 * u = 128 * ceil[len(C)/128] - len(C)
//	 * v = 128 * ceil[len(A)/128] - len(A)
//	 * S = GHASH_H(A || 0^v || C || 0^u || [len(A)]64 || [len(C)]64)
//	 * (i.e., zero padded to block size A || C and lengths of each in bits)
//	 */
//	ghash_start(S);
//	ghash(H, aad, aad_len, S);
//	ghash(H, crypt, crypt_len, S);
//	WPA_PUT_BE64(len_buf, aad_len * 8);
//	WPA_PUT_BE64(len_buf + 8, crypt_len * 8);
//	ghash(H, len_buf, sizeof(len_buf), S);
//
////	wpa_hexdump_key(MSG_EXCESSIVE, "S = GHASH_H(...)", S, 16);
//}
//
//
///**
// * aes_gcm_ae - GCM-AE_K(IV, P, A)
// */
//int aes_gcm_ae(const unsigned char *key, unsigned int key_len, const unsigned char *iv, unsigned int iv_len,
//	       const unsigned char *plain, unsigned int plain_len,
//	       const unsigned char *aad, unsigned int aad_len, unsigned char *crypt, unsigned char *tag)
//{
//	u8 H[AES_BLOCK_SIZE];
//	u8 J0[AES_BLOCK_SIZE];
//	u8 S[16];
//	void *aes;
//
//	aes = aes_gcm_init_hash_subkey(key, key_len, H);
////	if (aes == NULL)
////		return -1;
//
//	aes_gcm_prepare_j0(iv, iv_len, H, J0);
//
//	/* C = GCTR_K(inc_32(J_0), P) */
//	aes_gcm_gctr(aes, J0, plain, plain_len, crypt);
//
//	aes_gcm_ghash(H, aad, aad_len, crypt, plain_len, S);
//
//	/* T = MSB_t(GCTR_K(J_0, S)) */
//	aes_gctr(aes, J0, S, sizeof(S), tag);
//
//	/* Return (C, T) */
//
//	aes_encrypt_deinit(aes);
//
//	return 0;
//}
//
//
///**
// * aes_gcm_ad - GCM-AD_K(IV, C, A, T)
// */
//int aes_gcm_ad(const u8 *key, size_t key_len, const u8 *iv, size_t iv_len,
//	       const u8 *crypt, size_t crypt_len,
//	       const u8 *aad, size_t aad_len, const u8 *tag, u8 *plain)
//{
//	u8 H[AES_BLOCK_SIZE];
//	u8 J0[AES_BLOCK_SIZE];
//	u8 S[16], T[16];
//	void *aes;
//
//	aes = aes_gcm_init_hash_subkey(key, key_len, H);
////	if (aes == NULL)
////		return -1;
//
//	aes_gcm_prepare_j0(iv, iv_len, H, J0);
//
//	/* P = GCTR_K(inc_32(J_0), C) */
//	aes_gcm_gctr(aes, J0, crypt, crypt_len, plain);
//
//	aes_gcm_ghash(H, aad, aad_len, crypt, crypt_len, S);
//
//	/* T' = MSB_t(GCTR_K(J_0, S)) */
//	aes_gctr(aes, J0, S, sizeof(S), T);
//
//	aes_encrypt_deinit(aes);
//
//	if (os_memcmp((unsigned char*)tag, (unsigned char*)T, 16) != 0) {
////		wpa_printf(MSG_EXCESSIVE, "GCM: Tag mismatch");
//		return -1;
//	}
//
//	return 0;
//}
//
//
//int aes_gmac(const u8 *key, size_t key_len, const u8 *iv, size_t iv_len,
//	     const u8 *aad, size_t aad_len, u8 *tag)
//{
//	return aes_gcm_ae(key, key_len, iv, iv_len, NULL, 0, aad, aad_len, NULL,
//			  tag);
//}
//
