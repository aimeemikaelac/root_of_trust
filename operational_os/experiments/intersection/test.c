#include <string.h>
unsigned char shared_secret[32];

void intialize_enclave()
{
    memset(shared_secret, 'A', 32);
}
