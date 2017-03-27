#include "ff.h"
#include "xsecure_aes.h"
#include "xil_io.h"
#include "stdlib.h"
#include "secure_storage.h"
#include "stdio.h"
#include "xsecure_aes.h"


static FATFS fatfs;

unsigned int BBRAM_KEY[4];

#define BBRAM_TEST_FILE "bbram.bin"

#define SECURE_ENCLAVE 0xB0000000

#define IMAGE_SRC 0xFFFF8000
#define IMAGE_DST 0xFFFF9000
#define IMAGE_TAG 0xFFFFa000
//#define IMAGE_TAG_LEN 16
//#define IMAGE_LEN 48
#define BUFFER_LEN 0x1000

#define SECURE_ENCLAVE_ATTEMPTS 5
//for now, storage only holds 3 16 values:
//16 byte counter, 16 byte pin, 16 byte encryption key
#define STORAGE_SIZE 48
char SECURE_STORAGE_PRIMARY[30] = "sec.bin";
char SECURE_STORAGE_BACKUP_A[30] = "seca.bin";
char SECURE_STORAGE_BACKUP_B[30] = "secb.bin";

#define TAG_SIZE 16
char TAG_PRIMARY[30] = "tag.bin";
char TAG_BACKUP_A[30] = "taga.bin";
char TAG_BACKUP_B[30] = "tagb.bin";

#define IV_SIZE 16
char IV_PRIMARY[30] = "iv.bin";
char IV_BACKUP_A[30] = "iva.bin";
char IV_BACKUP_B[30] = "ivb.bin";

#define _FS_READONLY 0

typedef struct secure_storage{
	unsigned int counter[4];
	unsigned int pin[4];
	unsigned int encryption_key[4];
} SECURE_STORAGE;

typedef struct secure_storage_tag{
	unsigned int tag[4];
} SECURE_STORAGE_TAG;

typedef struct secure_storage_iv{
	unsigned int iv[4];
} SECURE_STORAGE_IV;

unsigned int KEY_TEST[] = {
		0,0,0,0
};

int read_secure_enclave_file(SECURE_STORAGE *storage, const char* file_name){
	FIL secure_storage_handle;
	FILINFO secure_storage_info;
	unsigned int bytes_read;

	//TODO: if we cannot read the file, we should reprovision
	if(f_open(&secure_storage_handle, file_name, FA_READ) != FR_OK){
		xil_printf("Could not open secure storage file: %s\n\r",
				   file_name);
		return -1;
	}
	if(f_stat(file_name, &secure_storage_info) != FR_OK){
		xil_printf("Could not stat secure storage file: %s\n\r",
				   file_name);
		return -1;
	}
	//TODO: if file is not right size, reprovision also
	if(secure_storage_info.fsize < STORAGE_SIZE){
		xil_printf("Secure storage file: %s is too small\n\r",
				   file_name);
		return -1;
	}

	//read counter
	if(f_read(&secure_storage_handle, storage->counter, 16, &bytes_read) != FR_OK){
		xil_printf("Error encountered reading counter from file: %s\n\r",
				   file_name);
		return -1;
	}
	if(bytes_read != 16){
		xil_printf("Too few bytes read for counter from file: %s\n\r",
				   file_name);
		return -1;
	}

	//read pin
	if(f_read(&secure_storage_handle, storage->pin, 16, &bytes_read) != FR_OK){
		xil_printf("Error encountered reading pin from file: %s\n\r",
				   file_name);
		return -1;
	}
	if(bytes_read != 16){
		xil_printf("Too few bytes read for pin from file: %s\n\r",
				   file_name);
		return -1;
	}

	//read key
	if(f_read(&secure_storage_handle, storage->encryption_key, 16, &bytes_read) != FR_OK){
		xil_printf("Error encountered reading key from file: %s\n\r",
				   file_name);
		return -1;
	}
	if(bytes_read != 16){
		xil_printf("Too few bytes read for key from file: %s\n\r",
				   file_name);
		return -1;
	}

	f_close(&secure_storage_handle);

	return 0;
}

int read_secure_storage_tag(SECURE_STORAGE_TAG *tag, const char* file_name){
	FIL secure_storage_tag_handle;
	FILINFO secure_storage_tag_info;
	unsigned int bytes_read;

	//TODO: if we cannot read the file, we should reprovision
	if(f_open(&secure_storage_tag_handle, file_name, FA_READ) != FR_OK){
		xil_printf("Could not open secure storage tag file: %s\n\r",
				   file_name);
		return -1;
	}
	if(f_stat(file_name, &secure_storage_tag_info) != FR_OK){
		xil_printf("Could not stat secure storage tag file: %s\n\r",
				   file_name);
		return -1;
	}
	//TODO: if file is not right size, reprovision also
	if(secure_storage_tag_info.fsize < TAG_SIZE){
		xil_printf("Secure storage tag file: %s is too small\n\r",
				   file_name);
		return -1;
	}

	//read counter
	if(f_read(&secure_storage_tag_handle, tag->tag, 16, &bytes_read) != FR_OK){
		xil_printf("Error encountered reading tag from file: %s\n\r",
				   file_name);
		return -1;
	}
	if(bytes_read != 16){
		xil_printf("Too few bytes read for tag from file: %s\n\r",
				   file_name);
		return -1;
	}

	f_close(&secure_storage_tag_handle);

	return 0;
}

int read_secure_storage_iv(SECURE_STORAGE_IV *iv, const char* file_name){
	FIL secure_storage_iv_handle;
	FILINFO secure_storage_iv_info;
	unsigned int bytes_read;

	//TODO: if we cannot read the file, we should reprovision
	if(f_open(&secure_storage_iv_handle, file_name, FA_READ) != FR_OK){
		xil_printf("Could not open secure storage iv file: %s\n\r",
				   file_name);
		return -1;
	}
	if(f_stat(file_name, &secure_storage_iv_info) != FR_OK){
		xil_printf("Could not stat secure storage iv file: %s\n\r",
				   file_name);
		return -1;
	}
	//TODO: if file is not right size, reprovision also
	if(secure_storage_iv_info.fsize < IV_SIZE){
		xil_printf("Secure storage iv file: %s is too small\n\r",
				   file_name);
		return -1;
	}

	//read counter
	if(f_read(&secure_storage_iv_handle, iv->iv, 16, &bytes_read) != FR_OK){
		xil_printf("Error encountered reading iv from file: %s\n\r",
				   file_name);
		return -1;
	}
	if(bytes_read != 16){
		xil_printf("Too few bytes read for iv from file: %s\n\r",
				   file_name);
		return -1;
	}

	f_close(&secure_storage_iv_handle);

	return 0;
}


static void XSecure_AesWaitForDone(XSecure_Aes *InstancePtr)
{
	/* Assert validates the input arguments */
	Xil_AssertVoid(InstancePtr != NULL);

	volatile u32 Status;

	do {
		Status = XSecure_ReadReg(InstancePtr->BaseAddress,
					XSECURE_CSU_AES_STS_OFFSET);
	} while ((u32)Status & XSECURE_CSU_AES_STS_AES_BUSY);
}

static s32 XSecure_AesDecryptBlk(XSecure_Aes *InstancePtr, u8 *Dst,
			const u8 *Src, const u8 *Tag, u32 Len, u32 Flag)
{
	/* Assert validates the input arguments */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Tag != NULL);

	volatile s32 Status = XST_SUCCESS;

	u32 GcmStatus = 0U;
//	u32 StartAddrByte = (u32)(INTPTR)Src;

	/* Start the message. */
	XSecure_WriteReg(InstancePtr->BaseAddress,
				XSECURE_CSU_AES_START_MSG_OFFSET,
				XSECURE_CSU_AES_START_MSG);

	/* Push IV into the AES engine. */
	XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
		(UINTPTR)InstancePtr->Iv, XSECURE_SECURE_GCM_TAG_SIZE/4U, 0);

	XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL);

	/* Acknowledge the transfer has completed */
	XCsuDma_IntrClear(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
				XCSUDMA_IXR_DONE_MASK);

	/* Enable CSU DMA Src channel for byte swapping.*/
	XCsuDma_Configure ConfigurValues = {0};

	XCsuDma_GetConfig(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
						&ConfigurValues);

	ConfigurValues.EndianType = 1U;

	XCsuDma_SetConfig(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
				&ConfigurValues);

	if(Flag)
	{
		/*
		 * This means we are decrypting Block of the boot image.
		 * Enable CSU DMA Dst channel for byte swapping.
		 */

		if (Dst != (u8*)XSECURE_DESTINATION_PCAP_ADDR)
		{
			print("thinks decryptiong Block of boot image\n\r");
			XCsuDma_GetConfig(InstancePtr->CsuDmaPtr,
						XCSUDMA_DST_CHANNEL,
						&ConfigurValues);
			ConfigurValues.EndianType = 1U;

			XCsuDma_SetConfig(InstancePtr->CsuDmaPtr,
						XCSUDMA_DST_CHANNEL,
						&ConfigurValues);
			/* Configure the CSU DMA Tx/Rx for the incoming Block. */
			XCsuDma_Transfer(InstancePtr->CsuDmaPtr,
						XCSUDMA_DST_CHANNEL,
						(UINTPTR)Dst, Len/4U, 0);
		}

//		if (InstancePtr->IsChunkingEnabled
//			== XSECURE_CSU_AES_CHUNKING_DISABLED)
//		{
			print("Think chunking is disabled\n\r");
			XCsuDma_Transfer(InstancePtr->CsuDmaPtr,
						XCSUDMA_SRC_CHANNEL,
						(UINTPTR)Src, Len/4U, 0);

//			if (Dst != (u8*)XSECURE_DESTINATION_PCAP_ADDR)
//			{
				print("Think destination is not pcap addr\n\r");
				/* Wait for the Dst DMA completion. */
				XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr,
							XCSUDMA_DST_CHANNEL);

				XCsuDma_IntrClear(InstancePtr->CsuDmaPtr,
							XCSUDMA_DST_CHANNEL,
							XCSUDMA_IXR_DONE_MASK);

				/* Disble CSU DMA Dst channel for byte swapping */

				XCsuDma_GetConfig(InstancePtr->CsuDmaPtr,
							XCSUDMA_DST_CHANNEL,
							&ConfigurValues);

				ConfigurValues.EndianType = 0U;

				XCsuDma_SetConfig(InstancePtr->CsuDmaPtr,
							XCSUDMA_DST_CHANNEL,
							&ConfigurValues);
//			}
//			else
//			{
//				printf("this dest IS pcap addr\n\r");
//				/* Wait for the Src DMA completion. */
//				XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr,
//							XCSUDMA_SRC_CHANNEL);
//				XSecure_PcapWaitForDone();
//			}

			/* Acknowledge the transfers have completed */
			XCsuDma_IntrClear(InstancePtr->CsuDmaPtr,
						XCSUDMA_SRC_CHANNEL,
						XCSUDMA_IXR_DONE_MASK);
//		}
//		else
//		{
//			print("copying chunks to OCM\n\r");
//			/* Copy all the chunks to OCM, decrypt & send to PCAP */
//			Status = XSecure_AesChunkDecrypt(InstancePtr, Src, Len);
//			if (XST_SUCCESS != Status)
//			{
//				return Status;
//			}
//			/* update address to point to incoming secure header */
//			StartAddrByte += Len;
//		}

		/*
		 * Configure AES engine to push decrypted Key and IV in the
		 * block to the CSU KEY and IV registers.
		 */
		XSecure_WriteReg(InstancePtr->BaseAddress,
				XSECURE_CSU_AES_KUP_WR_OFFSET,
				XSECURE_CSU_AES_IV_WR | XSECURE_CSU_AES_KUP_WR);

	}
//	else
//	{
//		/*
//		 * This means we are decrypting the Secure header.
//		 * Configure AES engine to push decrypted IV in the Secure
//		 * header to the CSU IV register.
//		 */
//		XSecure_WriteReg(InstancePtr->BaseAddress,
//				XSECURE_CSU_AES_KUP_WR_OFFSET,
//				XSECURE_CSU_AES_IV_WR | XSECURE_CSU_AES_KUP_WR);
//	}

	/* Push the Secure header/footer for decrypting next blocks KEY and IV. */
//	if (InstancePtr->IsChunkingEnabled == XSECURE_CSU_AES_CHUNKING_ENABLED)
//	{
//		print("chunking enabled, pushing next secure header\n\r");
//		/* Copy the secure header and GCM tag from flash to OCM */
//		Status = InstancePtr->DeviceCopy(StartAddrByte,
//				(UINTPTR)(InstancePtr->ReadBuffer),
//				(XSECURE_SECURE_HDR_SIZE
//				+ XSECURE_SECURE_GCM_TAG_SIZE));
//
//		if (XST_SUCCESS != Status)
//		{
//			Status = XSECURE_CSU_AES_DEVICE_COPY_ERROR;
//			return Status;
//		}
//
//		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
//					(UINTPTR)(InstancePtr->ReadBuffer),
//					XSECURE_SECURE_HDR_SIZE/4U, 1);
//	}
//	else
//	{
		print("pushing next secure header\n\r");
		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
					(UINTPTR)(Src + Len),
					XSECURE_SECURE_HDR_SIZE/4U, 1);
//	}

	print("waiting for secure header push to finish\n\r");
	/* Wait for the Src DMA completion. */
	XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL);

	print("acking transfer complete\n\r");
	/* Acknowledge the transfer has completed */
	XCsuDma_IntrClear(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
						XCSUDMA_IXR_DONE_MASK);

	print("restoring key write resgister\n\r");
	/* Restore Key write register to 0. */
	XSecure_WriteReg(InstancePtr->BaseAddress,
					XSECURE_CSU_AES_KUP_WR_OFFSET, 0x0);

	/* Push the GCM tag. */
//	if (InstancePtr->IsChunkingEnabled == XSECURE_CSU_AES_CHUNKING_ENABLED)
//	{
//		print("Pushing tag with chunking\n\r");
//		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
//			(UINTPTR)(InstancePtr->ReadBuffer
//					+ XSECURE_SECURE_HDR_SIZE),
//			XSECURE_SECURE_GCM_TAG_SIZE/4U, 0);
//	}
//	else
//	{
		print("Pushing tag\n\r");
		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
					(UINTPTR)Tag,
					XSECURE_SECURE_GCM_TAG_SIZE/4U, 0);
//	}

	/* Wait for the Src DMA completion. */
	print("Waiting for dma to finish\n\r");
	XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL);
	print("dma finished\n\r");

	/* Acknowledge the transfer has completed */
	XCsuDma_IntrClear(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
						XCSUDMA_IXR_DONE_MASK);

	/* Disable CSU DMA Src channel for byte swapping. */

	XCsuDma_GetConfig(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
							&ConfigurValues);
	ConfigurValues.EndianType = 0U;

	XCsuDma_SetConfig(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
							&ConfigurValues);

	print("waiting for aes done\n\r");
	/* Wait for AES Decryption completion. */
	XSecure_AesWaitForDone(InstancePtr);
	print("aes done\n\r");

	/* Get the AES status to know if GCM check passed. */
	GcmStatus = XSecure_ReadReg(InstancePtr->BaseAddress,
				XSECURE_CSU_AES_STS_OFFSET) &
				XSECURE_CSU_AES_STS_GCM_TAG_OK;

	if (!!GcmStatus == 0U)
	{
		print("GCM tag mismatch\n\r");
		return XSECURE_CSU_AES_GCM_TAG_MISMATCH;
	}

	print("returning\n\r");

	return Status;
}
//int decrypt_storage(SECURE_STORAGE *storage, SECURE_STORAGE_TAG *tag, SECURE_STORAGE_IV *iv){
//	XSecure_Aes cipher;
//	XCsuDma csu_dma;
//	//TODO: use this line to use the device storage when running live:
//#ifdef DEVICE_KEY
//	if(XSecure_AesInitialize(&cipher,
//							 &csu_dma,
//							 XSECURE_CSU_AES_KEY_SRC_DEV,
//							 iv->iv,
//							 NULL) != XST_SUCCESS){
//		xil_printf("Could not intialize AES using device key\n\r");
//		return -1;
//	}
//#else
//	unsigned int test_key[] = {
//			0, 0, 0, 0
//	};
//	if(XSecure_AesInitialize(&cipher,
//							 &csu_dma,
//							 XSECURE_CSU_AES_KEY_SRC_KUP,
//							 iv->iv,
//							 test_key) != XST_SUCCESS){
//		xil_printf("Could not intialize AES using device key\n\r");
//		return -1;
//	}
//#endif
//	if(XSecure_AesDecryptBlk(&cipher,
//							 (unsigned char*)storage,
//							 (unsigned char*)storage,
//							 (unsigned char*)tag->tag,
//							 STORAGE_SIZE,
//							 0) != XST_SUCCESS){
//		xil_printf("Could not decrypt secure storage\n\r");
//		return -1;
//	 }
//	//TODO: release cipher?
//	return 0;
//}


int decrypt_memory(u32 src, u32 dst, u32 tag_address, SECURE_STORAGE_IV *iv){
	XSecure_Aes cipher;
	XCsuDma_Config *Config;
	XCsuDma csu_dma;
	s32 result;
	u32 SssAes = 0x0U;
	u32 SssDma = 0x0U;
	u32 SssCfg = 0x0U;
	int i;



	Config = XCsuDma_LookupConfig(0);
	if (NULL == Config) {
		xil_printf("could not create csu dma config \n\r");
		return -1;
	}

	if(XCsuDma_CfgInitialize(&csu_dma, Config, Config->BaseAddress) != XST_SUCCESS){
		print("could not initialize csu dma\n\r");
		return -1;
	}

	//TODO: use this line to use the device storage when running live:
#ifdef DEVICE_KEY
	if(XSecure_AesInitialize(&cipher,
							 &csu_dma,
							 XSECURE_CSU_AES_KEY_SRC_DEV,
							 iv->iv,
							 NULL) != XST_SUCCESS){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not intialize AES using device key\n\r");
		return -1;
	}
#else
//	unsigned int test_key[] = {
//			0, 0, 0, 0
//	};
	print("attempting hardware decryption\n\r");
	print("Using this BBRAM key to decrypt: 0x");
	for(i=0; i<4; i++){
		xil_printf("%08x", BBRAM_KEY[i]);
	}
	print("\n\r");
	result = XSecure_AesInitialize(&cipher,
							 &csu_dma,
							 XSECURE_CSU_AES_KEY_SRC_KUP,
							 iv->iv,
							 BBRAM_KEY);
	if(result != XST_SUCCESS){
//		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
//					 "Could not intialize AES using device key\n\r");
		xil_printf("Could not intialize AES using device key. Result was %ul\n\r", result);
		return -1;
	}
	print("after hardware decryption init\n\r");
#endif

	SssAes = XSecure_SssInputAes(XSECURE_CSU_SSS_SRC_SRC_DMA);
	SssDma = XSecure_SssInputDstDma(XSECURE_CSU_SSS_SRC_AES);
	SssCfg = SssDma|SssAes;

	XSecure_SssSetup(SssCfg);

	/* Configure AES for Decryption */
	XSecure_WriteReg(cipher.BaseAddress, XSECURE_CSU_AES_CFG_OFFSET,
					 XSECURE_CSU_AES_CFG_DEC);

	XSecure_AesReset(&cipher);

	XSecure_WriteReg(cipher.BaseAddress,
				XSECURE_CSU_AES_KEY_CLR_OFFSET, (u32)0x0U);

	u32 Count=0U, Value=0U;
	u32 Addr=0U;
	for(Count = 0U; Count < 8U; Count++)
	{
		/* Helion AES block expects the key in big-endian. */
		Value = Xil_Htonl(cipher.Key[Count]);

		Addr = cipher.BaseAddress +
			XSECURE_CSU_AES_KUP_0_OFFSET
			+ (Count * 4);

		XSecure_Out32(Addr, Value);
	}
	XSecure_AesKeySelNLoad(&cipher);









	u8 *dst_ptr = (u8*)dst;
	u8 *src_ptr = (u8*)src;
	u8 *tag_ptr = (u8*)tag_address;
//	result = XSecure_AesDecrypt(&cipher,
//						  dst_ptr,
//						  src_ptr,
//						  STORAGE_SIZE);
	result = XSecure_AesDecryptBlk(&cipher,
								   dst_ptr,
								   src_ptr,
								   tag_ptr,
								   STORAGE_SIZE,
								   1);

	if(result == XSECURE_CSU_AES_GCM_TAG_MISMATCH){
		print("Tag mismatch. Ignoring for now\n\r");
		XSecure_AesReset(&cipher);
		return 0;
	}

	if(result != XST_SUCCESS){
		xil_printf("Could not decrypt secure storage. Result was %ul\n\r", result);
		XSecure_AesReset(&cipher);
		return -1;
	}

	print("after hardware decryption\n\r");
	//TODO: release cipher?
	XSecure_AesReset(&cipher);
	return 0;
}

int decrypt_storage(SECURE_STORAGE *storage_in_ct,
					SECURE_STORAGE *storage_out_pt,
					SECURE_STORAGE_IV *iv,
					SECURE_STORAGE_TAG *tag_in){
	int i, decryption_result;

	print("Copying secure storage to OCM buffer for decryption\n\r");
	for(i=0; i<4; i++){
		Xil_Out32(IMAGE_SRC + i*4, storage_in_ct->counter[i]);
		Xil_Out32(IMAGE_SRC + 16 + i*4, storage_in_ct->pin[i]);
		Xil_Out32(IMAGE_SRC + 32 + i*4, storage_in_ct->encryption_key[i]);
	}
	print("Writing tag to OCM buffer\n\r");
	for(i=0; i<4; i++){
		Xil_Out32(IMAGE_TAG + i*4, tag_in->tag[i]);
	}

	if((decryption_result = decrypt_memory(IMAGE_SRC, IMAGE_DST, IMAGE_TAG, iv)) < 0){
		print("Decrypting memory failed\n\r");
		return decryption_result;
	}


	for(i=0; i<4; i++){
		storage_out_pt->counter[i] = Xil_In32(IMAGE_DST + i*4);
		storage_out_pt->pin[i] = Xil_In32(IMAGE_DST + 16 + i*4);
		storage_out_pt->encryption_key[i] = Xil_In32(IMAGE_DST + 32 + i*4);
	}

	return decryption_result;

}


int write_to_bbram(unsigned int *key){
	//TODO: how to write to BBRAM?
	//for now, write to test file
	FIL bbram_file;
	unsigned int bytes_written;
	int i;
	char *bbram_test = BBRAM_TEST_FILE;
	if(f_open(&bbram_file, bbram_test, FA_CREATE_ALWAYS | FA_WRITE | FA_READ | FA_OPEN_ALWAYS) != FR_OK){
		print("Could not access BBRAM\n\r");
		return -1;
	}
	if(f_truncate(&bbram_file) != FR_OK){
		print("Could not clear BBRAM\n\r");
		return -1;
	}
	if(f_write(&bbram_file, key, 16, &bytes_written) != FR_OK){
		print("Could not update BBRAM\n\r");
		return -1;
	}
	print("BBRAM key written: 0x");
	for(i=0; i<4; i++){
		xil_printf("%08x", key[i]);
	}
	print("\n\r");
	memcpy(BBRAM_KEY, key, 16);
	f_close(&bbram_file);
	return 0;
}

//int encrypt_storage(SECURE_STORAGE *storage_to_encrypt,
//					SECURE_STORAGE *storage_out,
//					SECURE_STORAGE_TAG *tag_out,
//					SECURE_STORAGE_IV *iv,
//					unsigned int *key){
////	//TODO: evidently need to figure out how to call the encryption logic here
////	int success;
////	success = aes_gcm_ae((unsigned char*)key,
////						16,
////						(unsigned char*)iv->iv,
////						16,
////						(unsigned char*)storage_to_encrypt,
////						16*3,
////						NULL,
////						0,
////						(unsigned char*)storage_out,
////						(unsigned char*)tag_out);
////	if(success < 0){
////		xil_printf(
////					 "Could not encrypt data\n\r");
////	}
////	return success;
//	return -1;
//}

int encrypt_memory(u32 src, u32 dst, SECURE_STORAGE_IV *iv){
	XSecure_Aes cipher;
	XCsuDma_Config *Config;
	XCsuDma csu_dma;
	int i;
//	XCsuDma_Configure ConfigurValues = {0};

	Config = XCsuDma_LookupConfig(0);
	if (NULL == Config) {
		xil_printf("could not create csu dma config \n\r");
		return -1;
	}

	if(XCsuDma_CfgInitialize(&csu_dma, Config, Config->BaseAddress) != XST_SUCCESS){
		print("could not initialize csu dma\n\r");
		return -1;
	}

	//TODO: use this line to use the device storage when running live:
#ifdef DEVICE_KEY
	if(XSecure_AesInitialize(&cipher,
							 &csu_dma,
							 XSECURE_CSU_AES_KEY_SRC_DEV,
							 iv->iv,
							 NULL) != XST_SUCCESS){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not intialize AES using device key\n\r");
		return -1;
	}
#else
//	XCsuDma_GetConfig(&csu_dma, XCSUDMA_DST_CHANNEL,
//				&ConfigurValues);
//	ConfigurValues.EndianType = 1U;
//	XCsuDma_SetConfig(&csu_dma, XCSUDMA_DST_CHANNEL,
//			&ConfigurValues);

//	unsigned int test_key[] = {
//			0, 0, 0, 0
//	};
	print("attempting hardware encryption\n\r");
	print("Using this BBRAM key to encrypt: 0x");
	for(i=0; i<4; i++){
		xil_printf("%08x", BBRAM_KEY[i]);
	}
	print("\n\r");
	if(XSecure_AesInitialize(&cipher,
							 &csu_dma,
							 XSECURE_CSU_AES_KEY_SRC_KUP,
							 iv->iv,
							 BBRAM_KEY) != XST_SUCCESS){
//		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
//					 "Could not intialize AES using device key\n\r");
		print("Could not intialize AES using device key\n\r");
		return -1;
	}
	print("after hardware encryption init\n\r");
#endif
	u8 *dst_ptr = (u8*)dst;
	u8 *src_ptr = (u8*)src;
	XSecure_AesEncrypt(&cipher,
					   dst_ptr,
					   src_ptr,
					   STORAGE_SIZE + XSECURE_SECURE_HDR_SIZE);
	print("after hardware encryption\n\r");
	//TODO: release cipher?
	XSecure_AesReset(&cipher);
	return 0;
}

int encrypt_storage(SECURE_STORAGE *storage_in_pt,
					SECURE_STORAGE *storage_out_ct,
					SECURE_STORAGE_IV *iv,
					SECURE_STORAGE_TAG *tag_out){
	int i, encryption_result;

	print("writing secure storage to OCM buffer for encryption\n\r");
	for(i=0; i<4; i++){
		Xil_Out32(IMAGE_SRC + i*4, storage_in_pt->counter[i]);
		Xil_Out32(IMAGE_SRC + 16 + i*4, storage_in_pt->pin[i]);
		Xil_Out32(IMAGE_SRC + 32 + i*4, storage_in_pt->encryption_key[i]);
	}

	if((encryption_result = encrypt_memory(IMAGE_SRC, IMAGE_DST, iv)) < 0){
		print("Encrypting memory failed\n\r");
		return encryption_result;
	}

	for(i=0; i<4; i++){
		storage_out_ct->counter[i] = Xil_In32(IMAGE_DST + i*4);
		storage_out_ct->pin[i] = Xil_In32(IMAGE_DST + 16 + i*4);
		storage_out_ct->encryption_key[i] = Xil_In32(IMAGE_DST + 32 + i*4);
	}

	return encryption_result;
}

void increment_counter(SECURE_STORAGE *storage){
	//TODO: check the endianness of this vs. the FPGA
	int i;
	for(i=0; i<4; i++){
		storage->counter[i] = storage->counter[i] + 1;
		if(storage->counter[i] != 0){
			break;
		}
	}
}

//int write_secure_enclave(SECURE_STORAGE *storage, SECURE_STORAGE_IV *iv, SECURE_STORAGE_TAG *tag){
//	//TODO: write me!
////	???
//	return -1;
//}

int write_secure_storage_file(SECURE_STORAGE *storage_ct){
	unsigned int bytes_written;
	FRESULT result;
	FIL storage_file;
	char *storage_primary = SECURE_STORAGE_PRIMARY;
	if((result = f_open(&storage_file, storage_primary, FA_CREATE_ALWAYS | FA_WRITE | FA_READ | FA_OPEN_ALWAYS)) != FR_OK){
		xil_printf("Could not open storage file when opening for writing: %08x\n\r", result);
		return -1;
	}
	if(f_truncate(&storage_file) != FR_OK){
		print("Could not truncate storage file when writing\n\r");
		return -1;
	}
	if(f_write(&storage_file, storage_ct->counter, 16, &bytes_written) != FR_OK){
		print("Could not write encrypted counter to file\n\r");
		return -1;
	}
	if(f_write(&storage_file, storage_ct->pin, 16, &bytes_written) != FR_OK){
		print("Could not write encrypted pin to file\n\r");
		return -1;
	}
	if(f_write(&storage_file, storage_ct->encryption_key, 16, &bytes_written) != FR_OK){
		print("Could not write encrypted key to file\n\r");
		return -1;
	}
	f_sync(&storage_file);
	f_close(&storage_file);
	return 0;
}

int write_secure_storage_tag(SECURE_STORAGE_TAG *storage_tag){
	unsigned int bytes_written;
	FIL storage_tag_file;
	char *tag_primary = TAG_PRIMARY;
	if(f_open(&storage_tag_file, tag_primary, FA_CREATE_ALWAYS | FA_WRITE | FA_READ | FA_OPEN_ALWAYS) != FR_OK){
		print("Could not open tag file when opening for writing\n\r");
		return -1;
	}
	if(f_truncate(&storage_tag_file) != FR_OK){
		print("Could not truncate tag file when writing\n\r");
		return -1;
	}
	if(f_write(&storage_tag_file, storage_tag->tag, 16, &bytes_written) != FR_OK){
		print("Could not write tag to file\n\r");
		return -1;
	}
	f_sync(&storage_tag_file);
	f_close(&storage_tag_file);
	return 0;
}

int write_secure_storage_iv(SECURE_STORAGE_IV *storage_iv){
	unsigned int bytes_written;
	FIL storage_iv_file;
	char *iv_primary = IV_PRIMARY;
	if(f_open(&storage_iv_file, iv_primary, FA_CREATE_ALWAYS | FA_WRITE | FA_READ | FA_OPEN_ALWAYS) != FR_OK){
		print("Could not open tag file when opening for writing\n\r");
		return -1;
	}
	if(f_truncate(&storage_iv_file) != FR_OK){
		print("Could not truncate tag file when writing\n\r");
		return -1;
	}
	if(f_write(&storage_iv_file, storage_iv->iv, 16, &bytes_written) != FR_OK){
		print("Could not write tag to file\n\r");
		return -1;
	}
	f_sync(&storage_iv_file);
	f_close(&storage_iv_file);
	return 0;
}


//rename old storage and create a new one with a random key and write to storage
int roll_storage(SECURE_STORAGE *storage_pt_in,
				 char *storage_used,
				 char *iv_used,
				 char *tag_used){
//	int i;
	SECURE_STORAGE_IV new_iv;
	SECURE_STORAGE_TAG new_tag_out;
	SECURE_STORAGE storage_ct_out;
	srand(0);
	unsigned int rand_ish_key [] = {
			rand(), rand(), rand(), rand()
	};
//	key_new = rand_ish_key;
	unsigned int rand_ish_iv[] = {
			rand(), rand(), rand(), rand()
	};
//	for(i=0; i<4; i++){
//		current_iv_out.iv[i] = rand_ish_iv[i];
//	}
	memcpy(new_iv.iv, rand_ish_iv, 16);
//	memcpy(key_new, rand_ish_key, 16);

	//move old secure storage, iv and tag to backup file
	f_unlink(SECURE_STORAGE_BACKUP_A);
	if(f_rename(storage_used, SECURE_STORAGE_BACKUP_A) != FR_OK){
		//TODO: how to handle this error?
		xil_printf("Could not backup current storage. Aborting\n\r");
		return -1;
	}

	f_unlink(TAG_BACKUP_A);
	if(f_rename(tag_used, TAG_BACKUP_A) != FR_OK){
		//TODO: how to handle this error?
		xil_printf("Could not backup current tag. Aborting\n\r");
		return -1;
	}

	f_unlink(IV_BACKUP_A);
	if(f_rename(iv_used, IV_BACKUP_A) != FR_OK){
		//TODO: how to handle this error?
		xil_printf("Could not backup current iv. Aborting\n\r");
		return -1;
	}




	//re-encrypt secure storage and write to file. also write new tag
	//and iv to file

	//write BBRAM key to BBRAM
	if(write_to_bbram(rand_ish_key) < 0){
		xil_printf("Could not write new key to BBRAM. Aborting\n\r");
		return -1;
	}

	if(encrypt_storage(storage_pt_in,
					   &storage_ct_out,
					   &new_iv,
					   &new_tag_out) < 0){
		xil_printf("Could not encrypt new storage. Aborting\n\r");
		return -1;
	}

	//TODO: write storage to file
	if(write_secure_storage_file(&storage_ct_out) < 0){
		print("Error when writing secure storage\n\r");
		return -1;
	}


	//TODO: write iv to file
	if(write_secure_storage_iv(&new_iv) < 0){
		print("Error when writing iv\n\r");
		return -1;
	}

	//TODO: write tag to file
	if(write_secure_storage_tag(&new_tag_out) < 0){
		print("Error when writing tag\n\r");
		return -1;
	}


//	key_current = key_new;
	return 0;
}


int run_enclave(SECURE_STORAGE *storage_pt,
				 char *storage_used,
				 char *iv_used,
				 char *tag_used,
				 int *enclave_done){
	int i, roll_result, pin_high, pin_low;
	char pin[6];

	print("Prompting for pin\n\r");
	print("Please input pin: ");
	for(i=0; i<6; i++){
		pin[i] = (char)getchar();
//		xil_printf("%c", pin[i]);
//		putchar(pin[i]);
	}
//	memset(pin, 0, 6);
	print("\n\r");

	print("Pin was: 0x");
	for(i=0; i<6; i++){
		xil_printf("%02x", pin[i]);
	}
	print("\n\r");

	pin_high = ((int)pin[0] << 24) + ((int)pin[1] << 16) + ((int)pin[2] << 8) + (int)pin[3];
	pin_low = ((int)pin[4] << 8) + (int)pin[5];

	print("Starting secure enclave\n\r");
	//first, write the storage since we don't have a control signal for it
	//TODO: deal with endianness here
	for(i=0; i<4; i++){
		Xil_Out32(SECURE_ENCLAVE + 0x20 + i*4, storage_pt->pin[i]);
		Xil_Out32(SECURE_ENCLAVE + 0x30 + i*4, storage_pt->encryption_key[i]);
	}

	xil_printf("Pin high: %08x, pin low: %08x\n\r", pin_high, pin_low);
	print("actual pin: 0x");
	for(i=0; i<4; i++){
		xil_printf("%08x", storage_pt->pin[i]);
	}
	print("\n\r");
	//start the secure enclave
	Xil_Out32(SECURE_ENCLAVE, 1);

	//write the pin
	Xil_Out32(SECURE_ENCLAVE + 0x40, pin_high);
	Xil_Out32(SECURE_ENCLAVE + 0x44, pin_low);
	Xil_Out32(SECURE_ENCLAVE + 0x48, 0);
	Xil_Out32(SECURE_ENCLAVE + 0x4C, 0);
	//write pin valid
	Xil_Out32(SECURE_ENCLAVE + 0x50, 1);

	//write counter in
	//TODO: for now, use the first byte
	xil_printf("current counter: %08x\n\r", storage_pt->counter[0]);
	Xil_Out32(SECURE_ENCLAVE + 0x80, storage_pt->counter[0]);
	//write counter valid
	Xil_Out32(SECURE_ENCLAVE + 0x84, 1);

	unsigned int ap_control = Xil_In32(SECURE_ENCLAVE);
	unsigned int ap_done = ap_control &= 0x2;
	while(ap_done == 0){
//				__asm("")__;
		asm("");
		ap_control = Xil_In32(SECURE_ENCLAVE);
		ap_done = ap_control &= 0x2;
		xil_printf("Waiting for secure enclave done. Control reg: %08x\n\r", ap_control);
	}
	unsigned int reset_counter = Xil_In32(SECURE_ENCLAVE + 0x90);
	unsigned int reset_valid = Xil_In32(SECURE_ENCLAVE + 0x94);
	if(reset_valid != 1){
		print("Error: reset valid is not set but enclave is done\n\r");
	}

	//reset or increment counter
	if(reset_counter == 1){
		memset(storage_pt->counter, 0, 16);
		*enclave_done = 1;
		print("Reset counter for enclave\n\r");
	} else{
//		increment_counter(storage_pt);
		*enclave_done = 0;
		print("Incrementing counter for enclave\n\r");
	}

	//read storage out from fpga
	//TODO: ignore for now, since the enclave does not support it for now
//	for(i=0; i<4; i++){
//		storage_pt->pin[i] = Xil_In32(SECURE_ENCLAVE + 0x60 + i*4);
//		storage_pt->encryption_key[i] = Xil_In32(SECURE_ENCLAVE + 0x70 + i*4);
//	}


	roll_result = roll_storage(storage_pt,
							   storage_used,
							   iv_used,
							   tag_used);

	if(roll_result < 0){
		print("Could not roll storage in run secure enclave\n\r");
		return -1;
	}
	print("Done with run enclave\n\r");
	return 0;
}

int read_storage(SECURE_STORAGE *current_storage_ct,
				 SECURE_STORAGE_TAG *current_tag,
				 SECURE_STORAGE_IV *current_iv,
				 char *storage_used,
				 char *iv_used,
				 char *tag_used){
	int read_storage, read_tag, read_iv;

	//read secure storage file and tag
	read_storage = read_secure_enclave_file(current_storage_ct, SECURE_STORAGE_PRIMARY);
	read_tag = read_secure_storage_tag(current_tag, TAG_PRIMARY);
	read_iv = read_secure_storage_iv(current_iv, IV_PRIMARY);
	if(read_storage != 0 || read_tag != 0 || read_iv != 0){
		//attempt to decrypt secure storage using bbram key
		xil_printf("Could not read primary. Storage read: %i, Tag read: %i, IV read: %i\n\r",
				   read_storage, read_tag, read_iv);
		read_storage = read_secure_enclave_file(current_storage_ct, SECURE_STORAGE_BACKUP_A);
		read_tag = read_secure_storage_tag(current_tag, TAG_BACKUP_A);
		read_iv = read_secure_storage_iv(current_iv, IV_BACKUP_A);
		if(read_storage != 0 || read_tag != 0 || read_iv != 0){
			//attempt to decrypt backup secure storage
			//TODO: reprovision here?
			xil_printf("Could not read backup. Storage read: %i, Tag read: %i, IV read: %i. Aborting\n\r",
					   read_storage, read_tag, read_iv);
			return -1;
		}
		storage_used = SECURE_STORAGE_BACKUP_A;
		iv_used = IV_BACKUP_A;
		tag_used = TAG_BACKUP_A;
	}
	return 0;
}

int get_bbram_key(){
	int i;
	FIL bbram_file;
	unsigned int bytes_read;
	unsigned int key[4];

	//TODO: actually use bbram
	//for now, read from test file
	print("Attempting to access bbram\n\r");
	char *bbram_test = BBRAM_TEST_FILE;
	if(f_open(&bbram_file, bbram_test, FA_READ) != FR_OK){
		print("Could not access BBRAM\n\r");
		return -1;
	}
	if(f_read(&bbram_file, key, 16, &bytes_read) != FR_OK){
		print("Could not read key from BBRAM\n\r");
		return -1;
	}

	print("BBRAM Key read: 0x");
	for(i=0; i<4; i++){
		xil_printf("%08x", key[i]);
	}
	print("\n\r");

	f_close(&bbram_file);
	memcpy(BBRAM_KEY, key, 16);
	return 0;
}

int mount_storage(){
	FRESULT rc;
	char *path = "0:/";
	print("Attempting to mount storage\n\r");
	rc = f_mount(&fatfs, path, 1);
	if(rc != FR_OK){
		xil_printf("Error mounting storage: %08x\n\r", rc);
		return -1;
	}
	return 0;
}

int unmount_storage(){
	FRESULT rc;
	char *path = "0:/";
	print("Attempting to unmount storage\n\r");
	rc = f_mount(&fatfs, path, 1);
	if(rc != FR_OK){
		xil_printf("Error unmounting storage: %08x\n\r", rc);
		return -1;
	}
	return 0;
}


//extern void XFsbl_Exit(u64 HandoffAddress, u32 Flags);
//
//void XFsbl_HandoffExit(u64 HandoffAddress, u32 Flags)
//{
//
//	/**
//	 * Flush the L1 data cache and L2 cache, Disable Data Cache
//	 */
//	Xil_DCacheDisable();
//
//	xil_printf("Exit from FSBL \n\r");
//
//	/**
//	 * Exit to handoff address
//	 * PTRSIZE is used since handoff is in same running cpu
//	 * and address is of PTRSIZE
//	 */
//	XFsbl_Exit(HandoffAddress, Flags);
//
//	/**
//	 * should not reach here
//	 */
//	return ;
//
//}


void perform_secure_enclave(){
	int attempt, read_result, roll_result, bbram_result, mount_result, enclave_done;
	char* storage_used = SECURE_STORAGE_PRIMARY;
	char* tag_used = TAG_PRIMARY;
	char* iv_used = IV_PRIMARY;
//	unsigned int *key_new;
	unsigned int key_current[16];

	mount_result = mount_storage();
	if(mount_storage() < 0){
		print("Error mounting storage. Aborting\n\r");
		return;
	}
	bbram_result = get_bbram_key(key_current);
	if(bbram_result < 0){
		print("Error accessing BBRAM. aborting\n\r");
		return;
	}
//	unsigned int *iv_current = KEY_TEST;
	SECURE_STORAGE current_storage_ct;
	SECURE_STORAGE current_storage_pt;
	SECURE_STORAGE_TAG current_tag;
	SECURE_STORAGE_IV current_iv;

//	SECURE_STORAGE current_out_ct;
//	SECURE_STORAGE_TAG current_tag_out;
//	SECURE_STORAGE_IV current_iv_out;

	//for number of iterations before lockout/max number of attempts
	for(attempt=0; attempt<SECURE_ENCLAVE_ATTEMPTS; attempt++){
		read_result = read_storage(&current_storage_ct,
								   &current_tag,
								   &current_iv,
								   storage_used,
								   iv_used,
								   tag_used);

		if(read_result < 0){
			print("Error reading storage\n\r");
			//TODO: reprovision here to?
			return;
		}

		if(decrypt_storage(&current_storage_ct,
						   &current_storage_pt,
						   &current_iv,
						   &current_tag) < 0){
			//TODO: reprovision here?
			xil_printf("Could not decrypt storage. Aborting\n\r");
			return;
			//else -> need to reprovision
				//generate new random BBRAM key
				//send reprovision signal to secure enclave (TODO)
					//until implemented, generate a new enclave key and
					//prompt for a new pin
				//continue with boot
		} else{

			//increment counter and store
			increment_counter(&current_storage_pt);

			//roll storage to new key with current counter and write bbram
			roll_result = roll_storage(&current_storage_pt,
									   storage_used,
									   iv_used,
									   tag_used);
			if(roll_result < 0){
				print("Failed to roll storage\n\r");
				return;
			}

			//call enclave. encrypt the storage after each attempt.
			//callee will increment/reset counter as needed
			run_enclave(&current_storage_pt,
						storage_used,
						iv_used,
						tag_used,
						&enclave_done);

			if(enclave_done == 1){
				print("Enclave says is done. Continuing boot\n\n\n\n\n\n\r");
				break;
			}

		}
		print("Continuing perform enclave\n\r");



		//if not reprovisioning
			//prompt for pin (TODO: this part should be pluggable based on the client
			//TODO: look for end of line. for now just wait for 6 chars
		//create two ints from pin

				//app. here the secure enclave wants to prompt for a pin. it should
				//be the app (secure enclave) wants to prompt for something, based
				//on a string it provides)
			//pad/convert pin to 128 bits
				//TODO: this should be a KDF here or in the fpga app
			//run secure enclave (TODO: client app) with this pin
			//if secure enclave signals to continue boot (for now, by saying success)
				//TODO: check if app storage needs to be updated
				//if counter reset requested
					//generate new bbram key
					//write out updated secure storage w/ data out from secure enclave and reset counter
					//reencrypt under this key
					//move old storage to backup (for now, keep both existing until how bbram works is clear)
					//write new storage out
				//else
					//the same, but without changing counter (unlikely to occur)
		//continue to next attempt:
			//move backup to primary
			//TODO: can we use a new key written to BBRAM now, or do we need to reboot for it to work?
			//TODO: if we need to reboot, cache the updated BBRAM key
	}
//	XFsbl_HandoffExit(0U, XFSBL_NO_HANDOFFEXIT);
	print("Exiting perform enclave\n\r");
}

int test_provision(){
	int i;
	if(mount_storage() < 0){
		print("failed to mount storage\n\r");
		return -1;
	}

	int bbram_result = get_bbram_key();
	if(bbram_result < 0){
		print("Error accessing BBRAM\n\r");
//		return;
	}

	memset(BBRAM_KEY, 0, 16);

	SECURE_STORAGE test_start;
	SECURE_STORAGE_IV test_iv;
	SECURE_STORAGE test_start_ct;
	SECURE_STORAGE_TAG test_start_tag;

	memset(test_start.counter, 0, 16);
	memset(test_start.pin, 0, 16);
	for(i=0; i<6; i++){
		((char*)test_start.pin)[i] = '0';
	}
	memset(test_start.encryption_key, 0, 16);
	memset(test_iv.iv, 0, 16);

	if(encrypt_storage(&test_start,
					   &test_start_ct,
					   &test_iv,
					   &test_start_tag) < 0){
		print("Error encrypting\n\r");
		return -1;
	}

	if(write_secure_storage_file(&test_start_ct) < 0){
		print("Error writing secure storage\n\r");
		return -1;
	}
	if(write_secure_storage_iv(&test_iv) < 0){
		print("Error writing secure storage iv\n\r");
		return -1;
	}
	if(write_secure_storage_tag(&test_start_tag) < 0){
		print("Error writing secure storage tag\n\r");
		return -1;
	}
	if(write_to_bbram(KEY_TEST) < 0){
		print("Error writing bbram key\n\r");
		return -1;
	}
	unmount_storage();

	return 0;
}

//void test_aes(){
////	int i;
////	SECURE_STORAGE test_plain_storage;
////	for(i=0; i<4; i++){
////		test_plain_storage.counter[i] = i;
////		test_plain_storage.encryption_key[i] = i;
////		test_plain_storage.pin[i] = i;
////	}
//	xil_printf("Hello from fsbl!\n\r");
//}
