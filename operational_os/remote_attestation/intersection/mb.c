
#include <string.h>
#include <stdint.h>

#define CBC 1
#include "aes.h"


extern unsigned char shared_secret[32];

// Pads data out to the next 16-byte boundary; assumes there is room!
// returns the length of the new padded plaintext (data_len + [0,15])
uint32_t pad(uint8_t *data, uint32_t data_len)
{
    uint8_t to_pad = 16 - (data_len % 16);
    int i = data_len;
    do {
        data[i++] = to_pad;
    } while ((i % 16) != 0);
    return i;
}

// Returns the true length of the data, minus the padding
uint32_t unpad(uint8_t *data, uint32_t data_len)
{
    // warning: lucky13, poodle, doesn't even check padding...
    return data_len - data[data_len - 1];
}


// Takes the set intersection of (encrypted) data1 and data2.
// lengths can be no more than 100 uint32's
// first 16 bytes of enc_data1 (and enc_out) are the IV
void intersection(uint8_t *enc_data1, uint32_t enc_data1_len,
                  uint32_t *data2, uint32_t data2_len, uint8_t *enc_out, uint32_t *out_len)
{

    if (enc_data1_len < 16) {
        *out_len = 0;
        return;
    }

    if (enc_data1_len > (100*sizeof(uint32_t)+16)) {
        *out_len = 0;
        return;
    }

    // decrypt data1 with shared_secret
    uint32_t data1[100];
    AES_CBC_decrypt_buffer((uint8_t*)data1, &enc_data1[16], enc_data1_len - 16, (uint8_t*)shared_secret, enc_data1);

    uint32_t data1_len = unpad((uint8_t*)data1, enc_data1_len - 16) / sizeof(uint32_t);
    uint32_t out[100];
    // intersect data1 and data2, naive n^2 algorithm
    // TODO: sort data1 and data2 then merge
    int i, j;
    int k = 0;
    for (i=0; i<data1_len; i++) {
        for (j=0; j<data2_len; j++) {
            if (data1[i] == data2[j]) {
                out[k++] = data1[i];
            }
        }
    }

    // HACK: make our sending IV the last 16 bytes of the enc_data1
    memcpy(enc_out, &enc_data1[enc_data1_len - 16], 16);

    // encrypt output
    uint32_t padded_out = pad((uint8_t*)out, k*sizeof(uint32_t));
    *out_len = padded_out + 16;
    AES_CBC_encrypt_buffer(&enc_out[16], (uint8_t*)out, padded_out, (uint8_t*)shared_secret, enc_out);
}


