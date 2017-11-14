#ifndef REMOTE_ATTESTATION_DEMO_ARM_H
#define REMOTE_ATTESTATION_DEMO_ARM_H

#ifdef __cplusplus
extern "C" {
#endif

void start_attestation(unsigned char *remote_message, unsigned char *message_out);
void generate_encrypted_message(unsigned char *message_out, unsigned int *message_length);

#ifdef __cplusplus
}
#endif

#endif
