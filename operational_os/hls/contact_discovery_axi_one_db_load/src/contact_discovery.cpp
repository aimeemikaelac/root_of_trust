
//#define DATABASE_CHUNK_SIZE 300
#define CONTACTS_SIZE 128
#define DATABASE_SIZE 30000

static unsigned char contacts[64*CONTACTS_SIZE];
static unsigned char database[64*DATABASE_SIZE];
static unsigned char current_database_item[64];
static bool results[DATABASE_SIZE];
static int contacts_size = 0;
static int database_size = 0;
//static int operation_internal = 5;


void _memcpy(unsigned char *dest, unsigned char *src, int length){
	int i;
	for(i=0; i<length; i++){
		dest[i] = src[i];
	}
}

bool compare(int db_index, int contacts_index){
//#pragma HLS PIPELINE
	int i, j;
	bool found = true;
	bool results_local[64];
//	unsigned char contact_local[64];
//	unsigned char db_local[64];

//	_memcpy(contact_local, contacts + contacts_index*64, 64);
//	_memcpy(db_local, database + db_index*64, 64);
	for(i=0; i<64; i++){
//#pragma HLS PIPELINE
//#pragma HLS ALLOCATION instances=MuxnS core
//		assert(contact.empty() == false);
//		assert(db_item.empty() == false);
		results_local[i] = (contacts[contacts_index*64 + i] == database[db_index*64 + i]);
	}
	for(i=0; i<64; i++){
		found &= results_local[i];
	}
	return found;
}

void match_db_contact(int database_index){
//#pragma HLS PIPELINE
	int contacts_index, i;
	bool matched = false;
	bool local_results[CONTACTS_SIZE];
	for(contacts_index=0; contacts_index < CONTACTS_SIZE; contacts_index++){
//#pragma HLS DATAFLOW
//#pragma HLS DEPENDENCE variable=compare inter false
//#pragma HLS UNROLL factor=8
//#pragma HLS ALLOCATION instances=MuxnS core
//		printf("stream size: %i\n", db_stream.size());
		local_results[contacts_index] = compare(database_index, contacts_index);
	}
	for(contacts_index = 0; contacts_index<CONTACTS_SIZE; contacts_index++){
		matched |= local_results[contacts_index];
	}
	results[database_index] = matched;
}



void contact_discovery(
	int operation,
	unsigned char contact_in[64],
	unsigned char database_in[64],
	bool matched_out[DATABASE_SIZE],
	int *matched_finished,
	int *error_out,
	int *database_size_out,
	int *contacts_size_out
){
//#pragma HLS ARRAY_PARTITION variable=contacts block factor=64 dim=1
//#pragma HLS ARRAY_PARTITION variable=database block factor=64 dim=1
#pragma HLS INTERFACE ap_vld port=operation
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE ap_none register port=matched_finished
#pragma HLS INTERFACE ap_none register port=contacts_size_out
#pragma HLS INTERFACE s_axilite port=contacts_size_out
#pragma HLS INTERFACE ap_none register port=database_size_out
#pragma HLS INTERFACE s_axilite port=database_size_out
#pragma HLS INTERFACE ap_none register port=error_out
#pragma HLS INTERFACE s_axilite port=matched_finished
#pragma HLS INTERFACE s_axilite port=error_out
#pragma HLS INTERFACE s_axilite register port=operation
#pragma HLS INTERFACE s_axilite port=matched_out
#pragma HLS INTERFACE s_axilite port=database_in
#pragma HLS INTERFACE s_axilite port=contact_in
	int database_index, contacts_index, i;
	bool matched, current_matched;

//	*error_out = 0;
//	*contacts_size_out = 0;
//	*database_size_out = 0;
//	*matched_finished = 0;

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
			if(database_size >= DATABASE_SIZE){
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
//			for(database_index = 0; database_index < DATABASE_SIZE*64; database_index++){
//				db_stream.write(database[database_index]);
//			}
//			assert(db_stream.size() == DATABASE_SIZE*64);
			for(database_index = 0; database_index < DATABASE_SIZE; database_index++){
#pragma HLS PIPELINE
//				for(contacts_index = 0; contacts_index < contacts_size; contacts_index++){
//					current_matched = true;
//					for(i = 0; i<64; i++){
//						if(database[database_index*64 + i] != contacts[contacts_index*64 + i]){
//							current_matched = false;
//							break;
//						}
//					}
//					if(current_matched){
//						matched = true;
//						break;
//					}
//				}
				match_db_contact(database_index);
			}
			for(i=0; i<DATABASE_SIZE; i++){
#pragma HLS PIPELINE
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



