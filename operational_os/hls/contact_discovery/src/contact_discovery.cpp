#include "hls_stream.h"
#include "stdio.h"

#define DATABASE_CHUNK_SIZE 200
#define CONTACTS_SIZE 128

static unsigned char contacts[64*CONTACTS_SIZE];
static unsigned char current_database_item[64];
static int contacts_size = 0;


void _memcpy(unsigned char *dest, unsigned char *src, int length){
	int i;
	for(i=0; i<length; i++){
		dest[i] = src[i];
	}
}

bool compare(int contact_index){
	int i;
	bool found = true;

	for(i=0; i<64; i++){
		found &= (current_database_item[i] == contacts[contact_index*64 + i]);
	}
	return found;
}

void contact_discovery(
	int operation,
	hls::stream<unsigned char> &contacts_in,
	hls::stream<unsigned char> &database_in,
	hls::stream<bool> &matched_out,
	int *matched_finished,
	int *error_out,
	int *contacts_size_out
){
#pragma HLS INTERFACE axis register both port=matched_out
#pragma HLS INTERFACE axis register both port=database_in
#pragma HLS INTERFACE axis register both port=contacts_in
#pragma HLS INTERFACE ap_vld register port=operation
#pragma HLS INTERFACE ap_none register port=matched_finished
#pragma HLS INTERFACE ap_none register port=contacts_size_out
#pragma HLS INTERFACE s_axilite port=contacts_size_out
#pragma HLS INTERFACE ap_none register port=error_out
#pragma HLS INTERFACE s_axilite port=matched_finished
#pragma HLS INTERFACE s_axilite port=error_out
#pragma HLS INTERFACE s_axilite port=operation
#pragma HLS INTERFACE ap_ctrl_hs port=return
	int database_index, contacts_index, i, j;
	bool results[10];
	bool matched, current_matched;
	bool found;

	switch(operation){
		//load contact
		case 0:
			*matched_finished = 0;
			*error_out = 0;
			*contacts_size_out = contacts_size;
			while(!contacts_in.empty()){
				if(contacts_size >= CONTACTS_SIZE){
					*error_out = 1;
					contacts_in.read();
				} else {
					for(i=0; i<64; i++){
						contacts[contacts_size*64 + i] = contacts_in.read();
					}
					contacts_size++;
					*contacts_size_out = contacts_size;
					*error_out = 0;
				}
			}
			break;
		//run match
		case 1:
			*matched_finished = 0;
			*error_out = 0;
			*contacts_size_out = contacts_size;
			while(!database_in.empty()){
				found = false;
				for(i=0; i<64; i++){
					current_database_item[i] = database_in.read();
				}
				for(i=0; i<CONTACTS_SIZE; i++){
					bool comp = compare(i);
					found |= comp;
				}
				matched_out.write(found);
			}
			*matched_finished = 1;
			break;
		// clear contacts
		case 2:
			*matched_finished = 0;
			*error_out = 0;

			contacts_size = 0;

			*contacts_size_out = contacts_size;
			for(i=0; i<CONTACTS_SIZE; i++){
				contacts[i] = 0;
			}
			break;
		// other cases are errors
		default:
			*contacts_size_out = contacts_size;
			*matched_finished = 0;
			*error_out = 3;
			break;
	}
}





