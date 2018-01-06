#include <stdio.h>
#include <string.h>
#include <openssl/x509v3.h>
#include <openssl/objects.h>
#include <openssl/pem.h>
#include <openssl/evp.h>
#include <openssl/err.h>
#include <openssl/conf.h>
#include <openssl/rand.h>

int main(){
        EVP_PKEY *device_privkey = NULL, *ca_key = NULL;
        X509 *ca_cert, *crt;
        X509_REQ *req;
        BIO *bio;
        FILE *file;
        size_t cert_size = 0;
        unsigned char *cert_bytes, serial_bytes[20];

        OpenSSL_add_all_algorithms();

        //read device private key
        device_privkey = EVP_PKEY_new();
        ca_key = EVP_PKEY_new();
        file = fopen ("server_private_key.pem", "r");
        PEM_read_PrivateKey(file, &device_privkey, NULL, NULL);
        fclose(file);

        //generate a ed25519 key for testing
        // EVP_PKEY_CTX *pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_ED25519, NULL);
        // EVP_PKEY_keygen_init(pctx);
        // EVP_PKEY_keygen(pctx, &device_privkey);
        // EVP_PKEY_CTX_free(pctx);
        printf("Device ed25519 private key\n");
        bio = BIO_new_fp(stdout, BIO_NOCLOSE);
        EVP_PKEY_print_private(bio, device_privkey, 0, NULL);
        BIO_free_all(bio);
        PEM_write_PrivateKey(stdout, device_privkey, NULL, NULL, 0, NULL, NULL);
        printf("\n");

        //read CA private key
        bio = BIO_new(BIO_s_file());
        BIO_read_filename(bio, "ca_key.pem");
        ca_key = PEM_read_bio_PrivateKey(bio, NULL, NULL, NULL);
        BIO_free_all(bio);

        //read CA cert
        bio = BIO_new(BIO_s_file());
        BIO_read_filename(bio, "ca_cert.crt");
        ca_cert = PEM_read_bio_X509(bio, NULL, NULL, NULL);
        BIO_free_all(bio);

        //generate CSR
        req = X509_REQ_new();
        X509_REQ_set_pubkey(req, device_privkey);
        X509_NAME *name = X509_REQ_get_subject_name(req);
        X509_NAME_add_entry_by_txt(name, "C", MBSTRING_ASC, (const unsigned char*)("USA"), -1, -1, 0);
        X509_NAME_add_entry_by_txt(name, "ST", MBSTRING_ASC, (const unsigned char*)("CO"), -1, -1, 0);
        X509_NAME_add_entry_by_txt(name, "L", MBSTRING_ASC, (const unsigned char*)("Boulder"), -1, -1, 0);
        X509_NAME_add_entry_by_txt(name, "O", MBSTRING_ASC, (const unsigned char*)("NSR"), -1, -1, 0);
        // X509_NAME_add_entry_by_txt(name, "", MBSTRING_ASC, (const unsigned char*)REQ_DN_OU, -1, -1, 0);
        X509_NAME_add_entry_by_txt(name, "CN", MBSTRING_ASC, (const unsigned char*)("test"), -1, -1, 0);
        X509_REQ_sign(req, device_privkey, EVP_sha256());

        //sign CSR to create cert
        crt = X509_new();
        X509_set_version(crt, 2);

        //generate random serial
        RAND_bytes(serial_bytes, 20);
        serial_bytes[0] &= 0x7f; /* Ensure positive serial! */
        BIGNUM *bn = BN_new();
        BN_bin2bn(serial_bytes, 20, bn);
        ASN1_INTEGER *serial = ASN1_INTEGER_new();
        BN_to_ASN1_INTEGER(bn, serial);
        X509_set_serialNumber(crt, serial); // Set serial.
        ASN1_INTEGER_free(serial);
        BN_free(bn);



        X509_set_issuer_name(crt, X509_get_subject_name(ca_cert));
        X509_gmtime_adj(X509_get_notBefore(crt), 0);
        X509_gmtime_adj(X509_get_notAfter(crt), (long)2*365*3600);
        X509_set_subject_name(crt, X509_REQ_get_subject_name(req));
        EVP_PKEY *req_pubkey = X509_REQ_get_pubkey(req);
        X509_set_pubkey(crt, req_pubkey);
        EVP_PKEY_free(req_pubkey);
        X509_sign(crt, ca_key, EVP_sha256());
        X509_REQ_free(req);

        //convert cert to PEM
        bio = BIO_new(BIO_s_mem());
        PEM_write_bio_X509(bio, crt);
        cert_size = BIO_pending(bio);
        cert_bytes = (uint8_t *)malloc(cert_size + 1);
        BIO_read(bio, cert_bytes, cert_size);
        BIO_free_all(bio);

        //save cert
        file = fopen("test.crt.pem", "w");
        fwrite(cert_bytes, sizeof(unsigned char), cert_size, file);
        fclose(file);

        //cleanup
        EVP_PKEY_free(ca_key);
        EVP_PKEY_free(device_privkey);
        X509_free(ca_cert);
        X509_free(crt);
        free(cert_bytes);

        CRYPTO_cleanup_all_ex_data();
        // ERR_remove_thread_state(NULL);
        // ERR_free_strings();
        // CRYPTO_mem_leaks_fp(stderr);

        return 0;
}
