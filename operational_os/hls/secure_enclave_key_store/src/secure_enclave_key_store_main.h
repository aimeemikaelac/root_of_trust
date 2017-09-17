/*
 *
 */
//#ifndef SECURE_ENCLAVE_KEY_STORE_MAIN_H
//#define SECURE_ENCLAVE_KEY_STORE_MAIN_H

//defines are from: http://w1.fi/hostapd/devel/common_8h_source.html

#include "stdio.h"
#include "ap_int.h"

typedef unsigned long u64;
typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;

#define ENCRYPTED_HEADER_SIZE 0x1000
#define DECRYPTED_HEADER_SIZE 0x1000
#define AUTHENTICATION_TAG_SIZE 16
#define MASTER_KEY_LENGTH 16
#define MASTER_KEY_BITS 128
#define IV_LENGTH 16
#define USER_KEY_OFFSET 0
#define USER_KEY_LENGTH 1
#define DEVICE_KEY_OFFSET 1
#define COUNTER_OFFSET 2
#define COUNTER_LENGTH 1
#define WRAPPED_KEY_OFFSET 3
#define WRAPPED_KEY_LENGTH 1

#define BIT(x) (1 << (x))

#define WPA_GET_BE32(a) ((((u32) (a)[0]) << 24) | (((u32) (a)[1]) << 16) | \
						(((u32) (a)[2]) << 8) | ((u32) (a)[3]))

#define WPA_PUT_BE32(a, val)                                    \
        do {                                                    \
                (a)[0] = (u8) ((((u32) (val)) >> 24) & 0xff);   \
                (a)[1] = (u8) ((((u32) (val)) >> 16) & 0xff);   \
                (a)[2] = (u8) ((((u32) (val)) >> 8) & 0xff);    \
                (a)[3] = (u8) (((u32) (val)) & 0xff);           \
        } while (0)

#define WPA_PUT_BE64(a, val)                            \
        do {                                            \
                (a)[0] = (u8) (((u64) (val)) >> 56);    \
                (a)[1] = (u8) (((u64) (val)) >> 48);    \
                (a)[2] = (u8) (((u64) (val)) >> 40);    \
                (a)[3] = (u8) (((u64) (val)) >> 32);    \
                (a)[4] = (u8) (((u64) (val)) >> 24);    \
                (a)[5] = (u8) (((u64) (val)) >> 16);    \
                (a)[6] = (u8) (((u64) (val)) >> 8);     \
                (a)[7] = (u8) (((u64) (val)) & 0xff);   \
        } while (0)

//static const unsigned char R[16] = {
//		0xE1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
//};

static const ap_uint<128> R("E1000000000000000000000000000000");

int os_memcmp(unsigned char* one, unsigned char* two, int length);
void os_memset(unsigned char* dst, unsigned char val, unsigned int length);
void os_memcpy(unsigned char* dst, unsigned char* src, unsigned int length);

typedef ap_uint<128> key_int;

void aes(ap_uint<128> *inptext, ap_uint<128> *key, ap_uint<128> *outtext);

void secure_enclave_key_store(unsigned int device_key_ocm_addr,
							  volatile ap_uint<128> ocm[0x100000000],
							  ap_uint<128> iv,
							  ap_uint<128> encrypted_header_old[ENCRYPTED_HEADER_SIZE/16],
							  ap_uint<128> tag_header_old,
							  ap_uint<128> encrypted_header_new[ENCRYPTED_HEADER_SIZE/16],
							  ap_uint<128> tag_header_new,
							  ap_uint<128> user_key,
							  bool user_key_valid,
							  bool writing_done_in,
							  ap_uint<128> *derived_key_out,
							  bool *derived_key_valid,
							  ap_uint<128> *master_key_out,
							  bool *master_key_out_valid,
							  ap_uint<128> iv_out,
							  bool *iv_out_valid,
							  bool *decrypted_new_header_out,
							  bool *decrypted_new_header_out_valid);

bool aes_gcm_d(ap_uint<128> key,
			   ap_uint<128> iv,
			   ap_uint<128> *ct,
			   unsigned int length,
			   ap_uint<128> *pt,
			   ap_uint<128> *aad,
			   unsigned int aad_length,
			   ap_uint<128> tag_in);

ap_uint<128> aes_gcm_e(ap_uint<128> key,
		       ap_uint<128> iv,
			   ap_uint<128> *pt,
			   unsigned int length,
			   ap_uint<128> *ct,
			   ap_uint<128> *aad,
			   unsigned int aad_length);

bool aes_ctr_hmac_decrypt(ap_uint<128> tag,
						  ap_uint<128> *data,
						  int data_length,
						  ap_uint<128> key,
						  ap_uint<128> iv,
						  ap_uint<128> *out);

ap_uint<256> aes_ctr_hmac_encrypt(ap_uint<128> *data,
								  int data_length,
								  ap_uint<128> *out,
								  ap_uint<128> key,
								  ap_uint<128> iv);

class SHA256
{
protected:
    typedef unsigned char uint8;
    typedef unsigned int uint32;
    typedef unsigned long long uint64;

    const static uint32 sha256_k[];
    static const unsigned int SHA224_256_BLOCK_SIZE = (512/8);
public:
    void init();
    void update(const unsigned char *message, unsigned int len);
    void final(unsigned char *digest);
    static const unsigned int DIGEST_SIZE = ( 256 / 8);

protected:
    void transform(const unsigned char *message, unsigned int block_nb);
    unsigned int m_tot_len;
    unsigned int m_len;
    unsigned char m_block[2*SHA224_256_BLOCK_SIZE];
    uint32 m_h[8];
};

std::string sha256(std::string input);

#define SHA2_SHFR(x, n)    (x >> n)
#define SHA2_ROTR(x, n)   ((x >> n) | (x << ((sizeof(x) << 3) - n)))
#define SHA2_ROTL(x, n)   ((x << n) | (x >> ((sizeof(x) << 3) - n)))
#define SHA2_CH(x, y, z)  ((x & y) ^ (~x & z))
#define SHA2_MAJ(x, y, z) ((x & y) ^ (x & z) ^ (y & z))
#define SHA256_F1(x) (SHA2_ROTR(x,  2) ^ SHA2_ROTR(x, 13) ^ SHA2_ROTR(x, 22))
#define SHA256_F2(x) (SHA2_ROTR(x,  6) ^ SHA2_ROTR(x, 11) ^ SHA2_ROTR(x, 25))
#define SHA256_F3(x) (SHA2_ROTR(x,  7) ^ SHA2_ROTR(x, 18) ^ SHA2_SHFR(x,  3))
#define SHA256_F4(x) (SHA2_ROTR(x, 17) ^ SHA2_ROTR(x, 19) ^ SHA2_SHFR(x, 10))
#define SHA2_UNPACK32(x, str)                 \
{                                             \
    *((str) + 3) = (uint8) ((x)      );       \
    *((str) + 2) = (uint8) ((x) >>  8);       \
    *((str) + 1) = (uint8) ((x) >> 16);       \
    *((str) + 0) = (uint8) ((x) >> 24);       \
}
#define SHA2_PACK32(str, x)                   \
{                                             \
    *(x) =   ((uint32) *((str) + 3)      )    \
           | ((uint32) *((str) + 2) <<  8)    \
           | ((uint32) *((str) + 1) << 16)    \
           | ((uint32) *((str) + 0) << 24);   \
}

//#endif
