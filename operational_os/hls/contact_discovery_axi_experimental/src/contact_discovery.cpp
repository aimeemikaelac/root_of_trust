#include "hls_stream.h"
#include "assert.h"
#include "stdio.h"
#include "ap_int.h"
#include "string.h"

#define CONTACTS_SIZE 128
#define BATCH_SIZE 8

typedef ap_uint<512> hash;

static hash contacts[CONTACTS_SIZE];
static hash db_buffer[BATCH_SIZE];
static int contacts_size = 0;




bool match_db_contact(hash db_item){
	int contacts_index, i;
	bool matched = false;
	for(contacts_index=0; contacts_index < CONTACTS_SIZE; contacts_index++){
		matched |= (contacts[contacts_index] == db_item);
	}
	return matched;
}

//void contact_discovery(
//	int operation,
//	hash contact_in,
//	hls::stream<hash> &db_in,
//	unsigned int db_size_in,
//	int *error_out,
//	int *contacts_size_out,
//	hls::stream<unsigned char> &results_out
//){
void contact_discovery(
	int operation,
	hash contact_in,
	hash db_mem[8388608],
	unsigned long long offset,
	unsigned int db_size_in,
	int *error_out,
	int *contacts_size_out,
	hls::stream<unsigned char> &results_out,
	unsigned long long *current_offset
){
#pragma HLS INTERFACE s_axilite port=current_offset
#pragma HLS INTERFACE ap_none port=current_offset
#pragma HLS INTERFACE ap_none port=offset
#pragma HLS INTERFACE s_axilite port=offset
#pragma HLS INTERFACE m_axi depth=536870912 port=db_mem max_read_burst_length=4
#pragma HLS INTERFACE axis register both port=results_out
//#pragma HLS INTERFACE axis register both port=db_in
#pragma HLS INTERFACE ap_none port=db_size_in
#pragma HLS INTERFACE s_axilite port=db_size_in
//#pragma HLS STREAM variable=db_stream depth=128 dim=1
#pragma HLS INTERFACE ap_vld port=operation
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE ap_none register port=contacts_size_out
#pragma HLS INTERFACE s_axilite port=contacts_size_out
#pragma HLS INTERFACE ap_none register port=error_out
#pragma HLS INTERFACE s_axilite port=error_out
#pragma HLS INTERFACE s_axilite register port=operation
#pragma HLS INTERFACE s_axilite port=contact_in
	int database_index, contacts_index, i;
	bool matched, current_matched;

	switch(operation){
		//load contact
		case 0:
			*error_out = 0;
			*contacts_size_out = contacts_size;
			if(contacts_size >= CONTACTS_SIZE){
				*error_out = 1;
				*contacts_size_out = contacts_size;
			} else{
				contacts[contacts_size] = contact_in;
				contacts_size++;
				*contacts_size_out = contacts_size;
			}
			break;
		//run match
		case 1:
			*error_out = 0;
			*contacts_size_out = contacts_size;
			for(database_index = 0; database_index < db_size_in; database_index+=BATCH_SIZE){
//			for(database_index = 0; database_index < 76800; database_index+=BATCH_SIZE){
#pragma HLS PIPELINE
//				hash hash1 = db_in.read();
//				hash hash2 = db_in.read();
//				hash hash3 = db_in.read();
//				hash hash4 = db_in.read();
//				results_out.write((unsigned char)(match_db_contact(hash1)));
//				results_out.write((unsigned char)(match_db_contact(hash2)));
//				results_out.write((unsigned char)(match_db_contact(hash3)));
//				results_out.write((unsigned char)(match_db_contact(hash4)));
				memcpy(db_buffer, (unsigned char*)(db_mem) + ((database_index + offset)*sizeof(hash)), BATCH_SIZE*sizeof(hash));
				for(i=0; i<BATCH_SIZE; i++){
#pragma HLS UNROLL
					if(database_index + i < db_size_in){
//					if(database_index + i >= 76800){
						results_out.write((unsigned char)(match_db_contact(db_buffer[i])));
						*current_offset = offset + database_index;
					}
//					results_out.write((unsigned char)(match_db_contact(db_mem[offset + database_index + i])));

				}
			}
			break;
		// clear contacts
		case 2:
			*error_out = 0;
			contacts_size = 0;
			*contacts_size_out = contacts_size;
			break;
		// other cases are errors
		default:
			*contacts_size_out = contacts_size;
			*error_out = 3;
			break;
	}
}




