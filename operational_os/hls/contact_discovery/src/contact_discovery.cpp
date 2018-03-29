
#define DATABASE_CHUNK_SIZE 10
#define CONTACTS_SIZE 128

static unsigned char contacts[64*CONTACTS_SIZE];
static unsigned char database[64*DATABASE_CHUNK_SIZE];
static int contacts_size = 0;
static int database_size = 0;
//static int operation_internal = 5;


void _memcpy(unsigned char *dest, unsigned char *src, int length){
	int i;
	for(i=0; i<length; i++){
		dest[i] = src[i];
	}
}

void contact_discovery(
	int operation,
	unsigned char contact_in[64],
	unsigned char database_in[64],
	bool matched_out[DATABASE_CHUNK_SIZE],
	int *matched_finished,
	int *error_out,
	int *database_size_out,
	int *contacts_size_out
){
#pragma HLS INTERFACE ap_none port=matched_finished
#pragma HLS INTERFACE ap_none port=contacts_size_out
#pragma HLS INTERFACE s_axilite port=contacts_size_out
#pragma HLS INTERFACE ap_none port=database_size_out
#pragma HLS INTERFACE s_axilite port=database_size_out
#pragma HLS INTERFACE ap_none port=error_out
#pragma HLS INTERFACE s_axilite port=matched_finished
#pragma HLS INTERFACE s_axilite port=error_out
#pragma HLS INTERFACE s_axilite port=operation
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE s_axilite port=matched_out
#pragma HLS INTERFACE s_axilite port=database_in
#pragma HLS INTERFACE s_axilite port=contact_in
	int database_index, contacts_index, i;
	bool results[10];
	bool matched, current_matched;
	unsigned char current_database_item[64];

	*error_out = 0;
	*contacts_size_out = 0;
	*database_size_out = 0;
	*matched_finished = 0;

//	while(1){
//	switch(operation_internal){
	switch(operation){
		//load contact
		case 0:
			*matched_finished = 0;
			*error_out = 0;
			*contacts_size_out = contacts_size;
			*database_size_out = database_size;
			if(contacts_size >= CONTACTS_SIZE){
				*error_out = 1;
				*contacts_size_out = contacts_size;
			} else{
				_memcpy(contacts + contacts_size*64, contact_in, 64);
				contacts_size++;
				*contacts_size_out = contacts_size;
			}
			break;
		//load database
		case 1:
			*matched_finished = 0;
			*error_out = 0;
			if(database_size >= DATABASE_CHUNK_SIZE){
				*error_out = 2;
				*database_size_out = database_size;
			} else{
				_memcpy(database + database_size*64, database_in, 64);
				database_size++;
				*database_size_out = database_size;
			}
			break;
		//run match
		case 2:
			*matched_finished = 0;
			*error_out = 0;
			*contacts_size_out = contacts_size;
			*database_size_out = database_size;
			for(database_index = 0; database_index < database_size; database_index++){
				matched = false;
				for(contacts_index = 0; contacts_index < contacts_size; contacts_index++){
					current_matched = true;
					for(i = 0; i<64; i++){
						if(database[database_index*64 + i] != contacts[contacts_index*64 + i]){
							current_matched = false;
							break;
						}
					}
					if(current_matched){
						matched = true;
						break;
					}
				}
				results[database_index] = matched;
			}
			for(i=0; i<DATABASE_CHUNK_SIZE; i++){
				matched_out[i] = results[i];
			}
			*matched_finished = 1;
			break;
		// clear database
		case 3:
			*matched_finished = 0;
			*error_out = 0;

			database_size = 0;

			*contacts_size_out = contacts_size;
			*database_size_out = database_size;
			break;
		// clear contacts
		case 4:
			*matched_finished = 0;
			*error_out = 0;

			contacts_size = 0;

			*contacts_size_out = contacts_size;
			*database_size_out = database_size;
			break;
		// idle case
//		case 5:
////			*matched_finished = 0;
////			*error_out = 0;
//			*contacts_size_out = contacts_size;
//			*database_size_out = database_size;
//			operation_internal = operation;
//			break;
		// other cases are errors
		default:
			*contacts_size_out = contacts_size;
			*database_size_out = database_size;
			*matched_finished = 0;
			*error_out = 3;
			break;
	}
//	}
}





