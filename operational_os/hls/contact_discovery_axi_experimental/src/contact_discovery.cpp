#include "hls_stream.h"
#include "assert.h"
#include "stdio.h"

#define CONTACTS_SIZE 128
#define DATABASE_SIZE 30000

static unsigned char contacts[64*CONTACTS_SIZE];
static int contacts_size = 0;
static hls::stream<unsigned char> db_stream;


void _memcpy(unsigned char *dest, unsigned char *src, int length){
	int i;
	for(i=0; i<length; i++){
		dest[i] = src[i];
	}
}

bool compare(hls::stream<unsigned char> &contact, hls::stream<unsigned char> &db_item){
	int i, j;
	bool found = true;
	bool results_local[64];
	for(i=0; i<64; i++){
		results_local[i] = (contact.read() == db_item.read());
	}
	for(i=0; i<64; i++){
		found &= results_local[i];
	}
	return found;
}

bool match_db_contact(){
	int contacts_index, i;
	bool matched = false;
	bool local_results[CONTACTS_SIZE];
	unsigned char db_item_temp[64];
	for(i=0; i<64; i++){
		db_item_temp[i] = db_stream.read();
	}
	for(contacts_index=0; contacts_index < CONTACTS_SIZE; contacts_index++){
		hls::stream<unsigned char> contact;
#pragma HLS STREAM variable=contact depth=128 dim=1
		hls::stream<unsigned char> db_item;
#pragma HLS STREAM variable=db_item depth=128 dim=1
		for(i=0; i<64; i++){
			contact.write(contacts[contacts_index*64 + i]);
			db_item.write(db_item_temp[i]);
		}
		local_results[contacts_index] = compare(contact, db_item);
	}
	for(contacts_index = 0; contacts_index<CONTACTS_SIZE; contacts_index++){
		matched |= local_results[contacts_index];
	}
	return matched;
}



void contact_discovery(
	int operation,
	unsigned char contact_in[64],
	hls::stream<unsigned char> &db_in,
	unsigned int db_size_in,
	int *error_out,
	int *contacts_size_out,
	hls::stream<unsigned int> &results_out
){
#pragma HLS STREAM variable=results_out dim=1
#pragma HLS INTERFACE axis register both port=db_in
#pragma HLS INTERFACE ap_none port=db_size_in
#pragma HLS INTERFACE s_axilite port=db_size_in
#pragma HLS STREAM variable=db_stream depth=128 dim=1
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
				_memcpy(contacts + contacts_size*64, contact_in, 64);
				contacts_size++;
				*contacts_size_out = contacts_size;
			}
			break;
		//run match
		case 1:
			*error_out = 0;
			*contacts_size_out = contacts_size;
			for(database_index = 0; database_index < db_size_in; database_index++){
				for(i=0; i< 64; i++){
					db_stream.write(db_in.read());
				}
				results_out.write((unsigned int)(match_db_contact()));
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




