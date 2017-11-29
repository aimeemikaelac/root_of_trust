#include "unistd.h"
#include <stdint.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include "enclave_library.h"
#include "arm_protocol_header.h"

#define PORT 1234

// void intersection(uint8_t *enc_data1, uint32_t *enc_data1_len_in,
//                   uint32_t *data2, uint32_t *data2_len_in, uint8_t *enc_out, uint32_t *out_len);

int main()
{
    enclave_init_with_file("intersection.bin");

    uint32_t my_data[] = {5, 18, 23, 112, 999, 53};
    uint32_t my_data_len = sizeof(my_data) / sizeof(uint32_t);

    int sock = socket(AF_INET, SOCK_STREAM, 0);

    struct sockaddr_in sin;
    sin.sin_family = AF_INET;
    inet_aton("0.0.0.0", &sin.sin_addr);
    sin.sin_port = htons(PORT);

    if (bind(sock, (struct sockaddr*)&sin, sizeof(sin)) < 0) {
        perror("bind");
        return -1;
    }

    if (listen(sock, 5) < 0) {
        perror("listen");
        return -1;
    }

    while (1) {

        struct sockaddr_in remote_addr;
        size_t addr_size = sizeof(remote_addr);
        int fd = accept(sock, (struct sockaddr *)&remote_addr, (socklen_t*)&addr_size);
        if (fd < 0) {
            perror("accept");
            return -1;
        }

        uint8_t buf[416];
        uint16_t buf_len = 0;
        int rc = recv(fd, &buf_len, sizeof(uint16_t), 0);
        if (rc < 0) {
            perror("recv");
            return -1;
        }

        buf_len = ntohs(buf_len);
        uint32_t rcvd = 0;
        while (rcvd < buf_len) {
            rc = recv(fd, &buf[rcvd], buf_len - rcvd, 0);
            if (rc < 0) {
                perror("recv");
                return -1;
            }
            rcvd += rc;
        }
        printf("Received %d bytes from client\n", rcvd);

        uint8_t enc_out[416];
        uint32_t enc_out_len = 0;
        intersection(buf, &rcvd, my_data, &my_data_len, enc_out, &enc_out_len);

        // Send back to client for decryption
        uint16_t send_out_len = htons(enc_out_len & 0xffff);
        rc = send(fd, &send_out_len, sizeof(uint16_t), 0);
        if (rc < 0) {
            perror("send");
            return -1;
        }
        rc = send(fd, enc_out, enc_out_len, 0);
        if (rc < 0) {
            perror("send");
            return -1;
        }

        printf("sent 2+%d bytes (out of %d) to client\n", rc, enc_out_len);
        close(fd);
    }

}
