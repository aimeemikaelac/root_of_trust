
#include <stdint.h>
#include <stdio.h>
#include <string.h>



unsigned char shared_secret[32];

void intersection(uint8_t *enc_data1, uint32_t enc_data1_len,
                  uint32_t *data2, uint32_t data2_len, uint8_t *enc_out, uint32_t *out_len);

uint32_t pad(uint8_t *data, uint32_t data_len);
uint32_t unpad(uint8_t *data, uint32_t data_len);

int main() {


    uint32_t a[] = {1, 5, 7, 9, 12, 15, 27, 888, 444, 111, 123, 456, 777, 999, 1024, 1111};
    uint32_t b[] = {2, 3, 4, 5, 6, 7, 27, 999};
    uint8_t iv[]  = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };

    memset(shared_secret, 'A', 32);


    uint8_t a_buf[416];

    memcpy(a_buf, a, sizeof(a));
    uint32_t a_buf_len = pad(a_buf, sizeof(a));


    int j;
    printf("padded a_buf: %d from %d\n", a_buf_len, sizeof(a));
    for (j=0; j<a_buf_len; j++) {
        printf("%02x", a_buf[j]);
    }
    printf("\n");

    // encrypt a:
    uint8_t enc_a[416];
    memcpy(enc_a, iv, 16);
    // HACK: must be multiple of 16-bytes
    AES_CBC_encrypt_buffer(&enc_a[16], (uint8_t*)a_buf, a_buf_len, (uint8_t*)shared_secret, (uint8_t*)enc_a);

    for (j=0; j<16+a_buf_len; j++) {
        printf("%02x", enc_a[j]);
    }
    printf("\n");

    uint32_t enc_out_len;
    uint8_t enc_out[416];
    intersection(enc_a, 16*sizeof(uint32_t)+16, b, 8, enc_out, &enc_out_len);

    if (enc_out_len < 16) {
        printf("Error: didn't intersect right, got %d\n", enc_out_len);
        return -1;
    }
    uint32_t out[100];
    AES_CBC_decrypt_buffer((uint8_t*)out, &enc_out[16], enc_out_len - 16, (uint8_t*)shared_secret, enc_out);
    

    size_t num_ints = unpad((uint8_t*)out, (enc_out_len - 16)) / sizeof(uint32_t);
    int i;
    for (i=0; i<num_ints; i++) {
        printf("%d\n", out[i]);
    }
    return 0;


}
