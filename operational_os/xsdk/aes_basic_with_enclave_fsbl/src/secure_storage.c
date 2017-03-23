#include "ff.h"
#include "xsecure_aes.h"
#include "xil_io.h"
#include "stdlib.h"
#include "secure_storage.h"


#define IMAGE_SRC 0xFFFF8000
#define IMAGE_DST 0xFFFF9000
#define IMAGE_TAG 0xFFFFa000
#define IMAGE_TAG_LEN 16
#define IMAGE_LEN 48
#define BUFFER_LEN 0x1000

#define SECURE_ENCLAVE_ATTEMTPS 5
//for now, storage only holds 3 16 values:
//16 byte counter, 16 byte pin, 16 byte encryption key
#define STORAGE_SIZE 48
#define SECURE_STORAGE_PRIMARY "secure_storage_file.bin"
#define SECURE_STORAGE_BACKUP_A "secure_storage_file.bin.bakA"
#define SECURE_STORAGE_BACKUP_B "secure_storage_file.bin.bakB"

#define TAG_SIZE 16
#define TAG_PRIMARY "secure_storage_tag.bin"
#define TAG_BACKUP_A "secure_storage_tag.bin.bakA"
#define TAG_BACKUP_B "secure_storage_tag.bin.bakB"

#define IV_SIZE 16
#define IV_PRIMARY "secure_storage_iv.bin"
#define IV_BACKUP_A "secure_storage_iv.bin.bakA"
#define IV_BACKUP_B "secure_storage_iv.bin.bakB"

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
	if(f_open(&secure_storage_handle, file_name, 'r') != FR_OK){
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

	return 0;
}

int read_secure_storage_tag(SECURE_STORAGE_TAG *tag, const char* file_name){
	FIL secure_storage_tag_handle;
	FILINFO secure_storage_tag_info;
	unsigned int bytes_read;

	//TODO: if we cannot read the file, we should reprovision
	if(f_open(&secure_storage_tag_handle, file_name, 'r') != FR_OK){
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
	return 0;
}

int read_secure_storage_iv(SECURE_STORAGE_IV *iv, const char* file_name){
	FIL secure_storage_iv_handle;
	FILINFO secure_storage_iv_info;
	unsigned int bytes_read;

	//TODO: if we cannot read the file, we should reprovision
	if(f_open(&secure_storage_iv_handle, file_name, 'r') != FR_OK){
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

static s32 XSecure_AesChunkDecrypt(XSecure_Aes *InstancePtr, const u8 *Src,
					u32 Len)
{
	/* Assert validates the input arguments */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Len != 0U);

	s32 Status = XST_SUCCESS;

	u32 NumChunks = Len / (InstancePtr->ChunkSize);
	u32 RemainingBytes = Len % (InstancePtr->ChunkSize);
	u32 Index = 0U;
	u32 StartAddrByte = (u32)(INTPTR)Src;

	/*
	 * Start the chunking process, copy encrypted chunks into OCM and push
	 * decrypted data to PCAP
	 */

	for(Index = 0; Index < NumChunks; Index++)
	{
		Status = InstancePtr->DeviceCopy(StartAddrByte,
					(UINTPTR)(InstancePtr->ReadBuffer),
					InstancePtr->ChunkSize);

		if (XST_SUCCESS != Status)
		{
			Status = XSECURE_CSU_AES_DEVICE_COPY_ERROR;
			return Status;
		}

		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
					(UINTPTR)(InstancePtr->ReadBuffer),
					(InstancePtr->ChunkSize)/4U, 0);

		/*
		 * wait for the SRC_DMA to complete
		 */
		XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL);

		/* Acknowledge the transfers has completed */
		XCsuDma_IntrClear(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
							XCSUDMA_IXR_DONE_MASK);

		XSecure_PcapWaitForDone();

		StartAddrByte += InstancePtr->ChunkSize;
	}

	if((RemainingBytes != 0))
	{
		Status = InstancePtr->DeviceCopy(StartAddrByte,
				(UINTPTR)(InstancePtr->ReadBuffer), RemainingBytes);

		if (XST_SUCCESS != Status)
		{
			Status = XSECURE_CSU_AES_DEVICE_COPY_ERROR;
			return Status;
		}

		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
			(UINTPTR)(InstancePtr->ReadBuffer), RemainingBytes/4U, 0);

		/* wait for the SRC_DMA to complete and the pcap to be IDLE */
		XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr,
					XCSUDMA_SRC_CHANNEL);

		/* Acknowledge the transfers have completed */
		XCsuDma_IntrClear(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
							XCSUDMA_IXR_DONE_MASK);
		XSecure_PcapWaitForDone();

		StartAddrByte += RemainingBytes;
	}
	return Status;
}

static s32 XSecure_AesDecryptBlk(XSecure_Aes *InstancePtr, u8 *Dst,
			const u8 *Src, const u8 *Tag, u32 Len, u32 Flag)
{
	/* Assert validates the input arguments */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Tag != NULL);

	volatile s32 Status = XST_SUCCESS;

	u32 GcmStatus = 0U;
	u32 StartAddrByte = (u32)(INTPTR)Src;

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


int decrypt_memory(u32 src, u32 dst, u32 tag_address, SECURE_STORAGE_IV *iv, unsigned int *key){
	XSecure_Aes cipher;
	XCsuDma_Config *Config;
	XCsuDma csu_dma;
	s32 result;
	u32 SssAes = 0x0U;
	u32 SssDma = 0x0U;
	u32 SssCfg = 0x0U;



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
	result = XSecure_AesInitialize(&cipher,
							 &csu_dma,
							 XSECURE_CSU_AES_KEY_SRC_KUP,
							 iv->iv,
							 key);
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
					SECURE_STORAGE_TAG *tag_in,
					unsigned int *key){
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

	if((decryption_result = decrypt_memory(IMAGE_SRC, IMAGE_DST, IMAGE_TAG, iv, key)) < 0){
		print("Decrypting memory failed\n\r");
		return decryption_result;
	}


	for(i=0; i<4; i++){
		storage_out_pt->counter[i] = Xil_In32(IMAGE_DST + i*4);
		storage_out_pt->encryption_key[i] = Xil_In32(IMAGE_DST + 16 + i*4);
		storage_out_pt->pin[i] = Xil_In32(IMAGE_DST + 32 + i*4);
	}

	return decryption_result;

}


int write_to_bbram(unsigned int *key){
	//TODO: how to write too BBRAM?
//	???
	return -1;
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

int encrypt_memory(u32 src, u32 dst, SECURE_STORAGE_IV *iv, unsigned int *key){
	XSecure_Aes cipher;
	XCsuDma_Config *Config;
	XCsuDma csu_dma;
	XCsuDma_Configure ConfigurValues = {0};

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
	if(XSecure_AesInitialize(&cipher,
							 &csu_dma,
							 XSECURE_CSU_AES_KEY_SRC_KUP,
							 iv->iv,
							 key) != XST_SUCCESS){
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
					SECURE_STORAGE_TAG *tag_out,
					unsigned int *key){
	int i, encryption_result;

	print("writing secure storage to OCM buffer for encryption\n\r");
	for(i=0; i<4; i++){
		Xil_Out32(IMAGE_SRC + i*4, storage_in_pt->counter[i]);
		Xil_Out32(IMAGE_SRC + 16 + i*4, storage_in_pt->pin[i]);
		Xil_Out32(IMAGE_SRC + 32 + i*4, storage_in_pt->encryption_key[i]);
	}

	if((encryption_result = encrypt_memory(IMAGE_SRC, IMAGE_DST, iv, key)) < 0){
		print("Encrypting memory failed\n\r");
		return encryption_result;
	}

	for(i=0; i<4; i++){
		storage_out_ct->counter[i] = Xil_In32(IMAGE_DST + i*4);
		storage_out_ct->encryption_key[i] = Xil_In32(IMAGE_DST + 16 + i*4);
		storage_out_ct->pin[i] = Xil_In32(IMAGE_DST + 32 + i*4);
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

int write_secure_enclave(SECURE_STORAGE *storage, SECURE_STORAGE_IV *iv, SECURE_STORAGE_TAG *tag){
	//TODO: write me!
//	???
	return -1;
}

void perform_secure_enclave(){
	int i, attempt, read_storage, read_tag, read_iv;
	char* storage_used = SECURE_STORAGE_PRIMARY;
	unsigned int *key_new;
	unsigned int *key_current = KEY_TEST;
	//for number of iterations before lockout/max number of attempts
	for(attempt=0; attempt<SECURE_ENCLAVE_ATTEMTPS; attempt++){
		//read secure storage file and tag
		SECURE_STORAGE current_storage_ct;
		SECURE_STORAGE current_storage_pt;
		SECURE_STORAGE_TAG current_tag;
		SECURE_STORAGE_IV current_iv;

		SECURE_STORAGE current_out_ct;
		SECURE_STORAGE_TAG current_tag_out;
		SECURE_STORAGE_IV current_iv_out;

		read_storage = read_secure_enclave_file(&current_storage_ct, SECURE_STORAGE_PRIMARY);
		read_tag = read_secure_storage_tag(&current_tag, TAG_PRIMARY);
		read_iv = read_secure_storage_iv(&current_iv, IV_PRIMARY);
		if(read_storage != 0 || read_tag != 0 || read_iv != 0){
			//attempt to decrypt secure storage using bbram key
			xil_printf("Could not read primary. Storage read: %i, Tag read: %i, IV read: %i\n\r",
					   read_storage, read_tag, read_iv);
			read_storage = read_secure_enclave_file(&current_storage_ct, SECURE_STORAGE_BACKUP_A);
			read_tag = read_secure_storage_tag(&current_tag, TAG_BACKUP_A);
			read_iv = read_secure_storage_iv(&current_iv, IV_BACKUP_A);
			if(read_storage != 0 || read_tag != 0 || read_iv != 0){
				//attempt to decrypt backup secure storage
				//TODO: reprovision here?
				xil_printf("Could not read backup. Storage read: %i, Tag read: %i, IV read: %i. Aborting\n\r",
						   read_storage, read_tag, read_iv);
				return;
			}
			storage_used = SECURE_STORAGE_BACKUP_A;
		}

		if(decrypt_storage(&current_storage_ct,
						   &current_storage_pt,
						   &current_iv,
						   &current_tag,
						   key_current) < 0){
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
			//generate new random BBRAM key
			//TODO: need some sort of random number generator here
			srand(0);
			unsigned int rand_ish_key [] = {
					rand(), rand(), rand(), rand()
			};
			key_new = rand_ish_key;
			unsigned int rand_ish_iv[] = {
					rand(), rand(), rand(), rand()
			};
			for(i=0; i<4; i++){
				current_iv_out.iv[i] = rand_ish_iv[i];
			}


			//perform secure enclave interaction here



			//increment counter and store
			increment_counter(&current_storage_pt);
			//move old secure storage and tag to backup file
			if(f_rename(storage_used, SECURE_STORAGE_BACKUP_A) != FR_OK){
				//TODO: how to handle this error?
				xil_printf("Could not backup current storage. Aborting\n\r");
				return;
			}
			//re-encrypt secure storage and write to file. also write new tag
			//and iv to file

			if(encrypt_storage(&current_storage_pt,
							   &current_out_ct,
							   &current_iv_out,
							   &current_tag_out,
							   key_new) < 0){
				xil_printf("Could not encrypt new storage. Aborting\n\r");
				return;
			}

			//write BBRAM key to BBRAM
			if(write_to_bbram(key_new) < 0){
				xil_printf("Could not write new key to BBRAM. Aborting\n\r");
				return;
			}
			key_current = key_new;
		}


		//if not reprovisioning
			//prompt for pin (TODO: this part should be pluggable based on the client
//		getchar(); ?
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

}

void test_aes(){
//	int i;
//	SECURE_STORAGE test_plain_storage;
//	for(i=0; i<4; i++){
//		test_plain_storage.counter[i] = i;
//		test_plain_storage.encryption_key[i] = i;
//		test_plain_storage.pin[i] = i;
//	}
	xil_printf("Hello from fsbl!\n\r");
}
