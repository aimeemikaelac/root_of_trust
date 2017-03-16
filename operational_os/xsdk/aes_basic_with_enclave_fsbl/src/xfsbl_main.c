/******************************************************************************
*
* Copyright (C) 2015 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/**********************	*******************************************************/
/**
*
* @file xfsbl_main.c
*
* This is the main file which contains code for the FSBL.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date        Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00  kc   10/21/13 Initial release
* 1.00  ba   02/22/16 Added performance measurement feature.
*
* </pre>
*
* @note
*
******************************************************************************/

/***************************** Include Files *********************************/
#include "xfsbl_hw.h"
#include "xfsbl_main.h"
#include "bspconfig.h"
#include "ff.h"
#include "xsecure_aes.h"
#include "stdlib.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/
XFsblPs FsblInstancePtr;

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

int read_secure_enclave_file(SECURE_STORAGE *storage, const char* file_name){
	FIL secure_storage_handle;
	FILINFO secure_storage_info;
	unsigned int bytes_read;

	//TODO: if we cannot read the file, we should reprovision
	if(f_open(&secure_storage_handle, file_name, 'r') != FR_OK){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not open secure storage file: %s\n\r",
					 file_name);
		return -1;
	}
	if(f_stat(file_name, &secure_storage_info) != FR_OK){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not stat secure storage file: %s\n\r",
					 file_name);
		return -1;
	}
	//TODO: if file is not right size, reprovision also
	if(secure_storage_info.fsize < STORAGE_SIZE){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Secure storage file: %s is too small\n\r",
					 file_name);
		return -1;
	}

	//read counter
	if(f_read(&secure_storage_handle, storage->counter, 16, &bytes_read) != FR_OK){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Error encountered reading counter from file: %s\n\r",
					 file_name);
		return -1;
	}
	if(bytes_read != 16){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Too few bytes read for counter from file: %s\n\r",
					 file_name);
		return -1;
	}

	//read pin
	if(f_read(&secure_storage_handle, storage->pin, 16, &bytes_read) != FR_OK){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Error encountered reading pin from file: %s\n\r",
					 file_name);
		return -1;
	}
	if(bytes_read != 16){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Too few bytes read for pin from file: %s\n\r",
					 file_name);
		return -1;
	}

	//read key
	if(f_read(&secure_storage_handle, storage->encryption_key, 16, &bytes_read) != FR_OK){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Error encountered reading key from file: %s\n\r",
					 file_name);
		return -1;
	}
	if(bytes_read != 16){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Too few bytes read for key from file: %s\n\r",
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
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not open secure storage tag file: %s\n\r",
					 file_name);
		return -1;
	}
	if(f_stat(file_name, &secure_storage_tag_info) != FR_OK){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not stat secure storage tag file: %s\n\r",
					 file_name);
		return -1;
	}
	//TODO: if file is not right size, reprovision also
	if(secure_storage_tag_info.fsize < TAG_SIZE){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Secure storage tag file: %s is too small\n\r",
					 file_name);
		return -1;
	}

	//read counter
	if(f_read(&secure_storage_tag_handle, tag->tag, 16, &bytes_read) != FR_OK){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Error encountered reading tag from file: %s\n\r",
					 file_name);
		return -1;
	}
	if(bytes_read != 16){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Too few bytes read for tag from file: %s\n\r",
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
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not open secure storage iv file: %s\n\r",
					 file_name);
		return -1;
	}
	if(f_stat(file_name, &secure_storage_iv_info) != FR_OK){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not stat secure storage iv file: %s\n\r",
					 file_name);
		return -1;
	}
	//TODO: if file is not right size, reprovision also
	if(secure_storage_iv_info.fsize < IV_SIZE){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Secure storage iv file: %s is too small\n\r",
					 file_name);
		return -1;
	}

	//read counter
	if(f_read(&secure_storage_iv_handle, iv->iv, 16, &bytes_read) != FR_OK){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Error encountered reading iv from file: %s\n\r",
					 file_name);
		return -1;
	}
	if(bytes_read != 16){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Too few bytes read for iv from file: %s\n\r",
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

		if (InstancePtr->IsChunkingEnabled
			== XSECURE_CSU_AES_CHUNKING_DISABLED)
		{
			XCsuDma_Transfer(InstancePtr->CsuDmaPtr,
						XCSUDMA_SRC_CHANNEL,
						(UINTPTR)Src, Len/4U, 0);

			if (Dst != (u8*)XSECURE_DESTINATION_PCAP_ADDR)
			{
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
			}
			else
			{
				/* Wait for the Src DMA completion. */
				XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr,
							XCSUDMA_SRC_CHANNEL);
				XSecure_PcapWaitForDone();
			}

			/* Acknowledge the transfers have completed */
			XCsuDma_IntrClear(InstancePtr->CsuDmaPtr,
						XCSUDMA_SRC_CHANNEL,
						XCSUDMA_IXR_DONE_MASK);
		}
		else
		{
			/* Copy all the chunks to OCM, decrypt & send to PCAP */
			Status = XSecure_AesChunkDecrypt(InstancePtr, Src, Len);
			if (XST_SUCCESS != Status)
			{
				return Status;
			}
			/* update address to point to incoming secure header */
			StartAddrByte += Len;
		}

		/*
		 * Configure AES engine to push decrypted Key and IV in the
		 * block to the CSU KEY and IV registers.
		 */
		XSecure_WriteReg(InstancePtr->BaseAddress,
				XSECURE_CSU_AES_KUP_WR_OFFSET,
				XSECURE_CSU_AES_IV_WR | XSECURE_CSU_AES_KUP_WR);

	}
	else
	{
		/*
		 * This means we are decrypting the Secure header.
		 * Configure AES engine to push decrypted IV in the Secure
		 * header to the CSU IV register.
		 */
		XSecure_WriteReg(InstancePtr->BaseAddress,
				XSECURE_CSU_AES_KUP_WR_OFFSET,
				XSECURE_CSU_AES_IV_WR | XSECURE_CSU_AES_KUP_WR);
	}

	/* Push the Secure header/footer for decrypting next blocks KEY and IV. */
	if (InstancePtr->IsChunkingEnabled == XSECURE_CSU_AES_CHUNKING_ENABLED)
	{
		/* Copy the secure header and GCM tag from flash to OCM */
		Status = InstancePtr->DeviceCopy(StartAddrByte,
				(UINTPTR)(InstancePtr->ReadBuffer),
				(XSECURE_SECURE_HDR_SIZE
				+ XSECURE_SECURE_GCM_TAG_SIZE));

		if (XST_SUCCESS != Status)
		{
			Status = XSECURE_CSU_AES_DEVICE_COPY_ERROR;
			return Status;
		}

		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
					(UINTPTR)(InstancePtr->ReadBuffer),
					XSECURE_SECURE_HDR_SIZE/4U, 1);
	}
	else
	{
		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
					(UINTPTR)(Src + Len),
					XSECURE_SECURE_HDR_SIZE/4U, 1);
	}

	/* Wait for the Src DMA completion. */
	XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL);

	/* Acknowledge the transfer has completed */
	XCsuDma_IntrClear(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
						XCSUDMA_IXR_DONE_MASK);

	/* Restore Key write register to 0. */
	XSecure_WriteReg(InstancePtr->BaseAddress,
					XSECURE_CSU_AES_KUP_WR_OFFSET, 0x0);

	/* Push the GCM tag. */
	if (InstancePtr->IsChunkingEnabled == XSECURE_CSU_AES_CHUNKING_ENABLED)
	{
		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
			(UINTPTR)(InstancePtr->ReadBuffer
					+ XSECURE_SECURE_HDR_SIZE),
			XSECURE_SECURE_GCM_TAG_SIZE/4U, 0);
	}
	else
	{
		XCsuDma_Transfer(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
					(UINTPTR)Tag,
					XSECURE_SECURE_GCM_TAG_SIZE/4U, 0);
	}

	/* Wait for the Src DMA completion. */
	XCsuDma_WaitForDone(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL);

	/* Acknowledge the transfer has completed */
	XCsuDma_IntrClear(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
						XCSUDMA_IXR_DONE_MASK);

	/* Disable CSU DMA Src channel for byte swapping. */

	XCsuDma_GetConfig(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
							&ConfigurValues);
	ConfigurValues.EndianType = 0U;

	XCsuDma_SetConfig(InstancePtr->CsuDmaPtr, XCSUDMA_SRC_CHANNEL,
							&ConfigurValues);

	/* Wait for AES Decryption completion. */
	XSecure_AesWaitForDone(InstancePtr);

	/* Get the AES status to know if GCM check passed. */
	GcmStatus = XSecure_ReadReg(InstancePtr->BaseAddress,
				XSECURE_CSU_AES_STS_OFFSET) &
				XSECURE_CSU_AES_STS_GCM_TAG_OK;

	if (!!GcmStatus == 0U)
	{
		return XSECURE_CSU_AES_GCM_TAG_MISMATCH;
	}

	return Status;
}

int decrypt_storage(SECURE_STORAGE *storage, SECURE_STORAGE_TAG *tag, SECURE_STORAGE_IV *iv){
	XSecure_Aes cipher;
	XCsuDma csu_dma;
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
	unsigned int test_key[] = {
			0, 0, 0, 0
	};
	if(XSecure_AesInitialize(&cipher,
							 &csu_dma,
							 XSECURE_CSU_AES_KEY_SRC_KUP,
							 iv->iv,
							 test_key) != XST_SUCCESS){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not intialize AES using device key\n\r");
		return -1;
	}
#endif
	if(XSecure_AesDecryptBlk(&cipher,
							 (unsigned char*)storage,
							 (unsigned char*)storage,
							 (unsigned char*)tag->tag,
							 STORAGE_SIZE,
							 0) != XST_SUCCESS){
		XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not decrypt secure storage\n\r");
		return -1;
	 }
	//TODO: release cipher?
	return 0;
}

int write_to_bbram(unsigned int *key){
	//TODO: how to write too BBRAM?
	???
	return -1;
}

int encrypt_storage(SECURE_STORAGE *storage_to_encrypt,
					SECURE_STORAGE *storage_out,
					SECURE_STORAGE_TAG *tag_out,
					SECURE_STORAGE_IV *iv,
					unsigned int *key){
	//TODO: evidently need to figure out how to call the encryption logic here
	???
	return -1;
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
	???
	return -1;
}

void perform_secure_enclave(){
	int attempt, read_storage, read_tag, read_iv;
	char* storage_used = SECURE_STORAGE_PRIMARY;
	unsigned int *key_new;
	//for number of iterations before lockout/max number of attempts
	for(attempt=0; attempt<SECURE_ENCLAVE_ATTEMTPS; attempt++){
		//read secure storage file and tag
		SECURE_STORAGE current_storage;
		SECURE_STORAGE_TAG current_tag;
		SECURE_STORAGE_IV current_iv;

		SECURE_STORAGE current_out;
		SECURE_STORAGE_TAG current_tag_out;
		SECURE_STORAGE_IV current_iv_out;

		read_storage = read_secure_enclave_file(&current_storage, SECURE_STORAGE_PRIMARY);
		read_tag = read_secure_storage_tag(&current_tag, TAG_PRIMARY);
		read_iv = read_secure_storage_iv(&current_iv, IV_PRIMARY);
		if(read_storage != 0 || read_tag != 0 || read_iv != 0){
			//attempt to decrypt secure storage using bbram key
			XFsbl_Printf(DEBUG_PRINT_ALWAYS,
						 "Could not read primary. Storage read: %i, Tag read: %i, IV read: %i\n\r",
						 read_storage, read_tag, read_iv);
			read_storage = read_secure_enclave_file(&current_storage, SECURE_STORAGE_BACKUP_A);
			read_tag = read_secure_storage_tag(&current_tag, TAG_BACKUP_A);
			read_iv = read_secure_storage_iv(&current_iv, IV_BACKUP_A);
			if(read_storage != 0 || read_tag != 0 || read_iv != 0){
				//attempt to decrypt backup secure storage
				//TODO: reprovision here?
				XFsbl_Printf(DEBUG_PRINT_ALWAYS,
					 "Could not read backup. Storage read: %i, Tag read: %i, IV read: %i. Aborting\n\r",
					 read_storage, read_tag, read_iv);
				return;
			}
			storage_used = SECURE_STORAGE_BACKUP_A;
		}

		if(decrypt_storage(&current_storage, &current_tag, &current_iv) < 0){
			//TODO: reprovision here?
			XFsbl_Printf(DEBUG_PRINT_ALWAYS,
						 "Could not decrypt storage. Aborting\n\r");
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
			unsigned int rand_ish_iv = {
					rand(), rand(), rand(), rand()
			};
			//increment counter and store
			increment_counter(&current_storage);
			//move old secure storage and tag to backup file
			if(f_rename(storage_used, SECURE_STORAGE_BACKUP_A) != FR_OK){
				//TODO: how to handle this error?
				XFsbl_Printf(DEBUG_PRINT_ALWAYS,
							 "Could not backup current storage. Aborting\n\r");
				return;
			}
			//re-encrypt secure storage and write to file (and tag)

			if(encrypt_storage(&current_storage, &current_out, &current_tag_out, &current_iv_out, key_new) < 0){
				XFsbl_Printf(DEBUG_PRINT_ALWAYS,
							 "Could not encrypt new storage. Aborting\n\r");
				return;
			}

			//write BBRAM key to BBRAM
			if(write_to_bbram(key_new) < 0){
				XFsbl_Printf(DEBUG_PRINT_ALWAYS,
							 "Could not write new key to BBRAM. Aborting\n\r");
				return;
			}
		}


		//if not reprovisioning
			//prompt for pin (TODO: this part should be pluggable based on the client
		getchar(); ?
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



/*****************************************************************************/
/** This is the FSBL main function and is implemented stage wise.
 *
 * @param	None
 *
 * @return	None
 *
 *****************************************************************************/
int main(void )
{
	/**
	 * Local variables
	 */
	u32 FsblStatus = XFSBL_SUCCESS;
	u32 FsblStage = XFSBL_STAGE1;
	u32 PartitionNum=0U;
	u32 EarlyHandoff = FALSE;
#ifdef XFSBL_PERF
	XTime tCur = 0;
#endif

#if defined(EL3) && (EL3 != 1)
#error "FSBL should be generated using only EL3 BSP"
#endif

	/**
	 * Initialize globals.
	 */
	FsblInstancePtr.ErrorCode = FsblStatus;

	while (1) {

		switch (FsblStage)
		{

		case XFSBL_STAGE1:
			{
				/**
				 * Initialize the system
				 */
				XFsbl_CfgInitialize(&FsblInstancePtr);

				FsblStatus = XFsbl_Initialize(&FsblInstancePtr);
				if (XFSBL_SUCCESS != FsblStatus)
				{
					FsblStatus += XFSBL_ERROR_STAGE_1;
					FsblStage = XFSBL_STAGE_ERR;
				} else {

					/**
					 *
					 * Include the code for FSBL time measurements
					 * Initialize the global timer and get the value
					 */

					FsblStage = XFSBL_STAGE2;
				}
			}break;

		case XFSBL_STAGE2:
			{
				/* Reading Timer value for Performance measurement.*/
#ifdef XFSBL_PERF
				/* Get Start time for Boot Device init. */
				XTime_GetTime(&tCur);
#endif

				XFsbl_Printf(DEBUG_INFO,
						"================= In Stage 2 ============ \n\r");

				/**
				 * 	Primary Device
				 *  Secondary boot device
				 *  DeviceOps
				 *  image header
				 *  partition header
				 */

				FsblStatus = XFsbl_BootDeviceInitAndValidate(&FsblInstancePtr);
				if ( (XFSBL_SUCCESS != FsblStatus) &&
						(XFSBL_STATUS_JTAG != FsblStatus) )
				{
					XFsbl_Printf(DEBUG_GENERAL,"Boot Device "
							"Initialization failed 0x%0lx\n\r", FsblStatus);
					FsblStatus += XFSBL_ERROR_STAGE_2;
					FsblStage = XFSBL_STAGE_ERR;
				} else if (XFSBL_STATUS_JTAG == FsblStatus) {
					/**
					 * This is JTAG boot mode, go to the handoff stage
					 */
					FsblStage = XFSBL_STAGE4;
				} else {
					XFsbl_Printf(DEBUG_INFO,"Initialization Success \n\r");

					/**
					 * Start the partition loading from 1
					 * 0th partition will be FSBL
					 */
					PartitionNum = 0x1U;

					FsblStage = XFSBL_STAGE3;
				}
#ifdef XFSBL_PERF
				XFsbl_MeasurePerfTime(tCur);
				XFsbl_Printf(DEBUG_PRINT_ALWAYS, " : Boot Dev. Init. Time\n\r");
#endif
			} break;

		case XFSBL_STAGE3:
			{

				XFsbl_Printf(DEBUG_INFO,
					"======= In Stage 3, Partition No:%d ======= \n\r",
					PartitionNum);

				/**
				 * Load the partitions
				 *  image header
				 *  partition header
				 *  partition parameters
				 */
				FsblStatus = XFsbl_PartitionLoad(&FsblInstancePtr,
								  PartitionNum);
				if (XFSBL_SUCCESS != FsblStatus)
				{
					/**
					 * Error
					 */
					XFsbl_Printf(DEBUG_GENERAL,"Partition %d Load Failed, 0x%0lx\n\r",
							PartitionNum, FsblStatus);
					FsblStatus += XFSBL_ERROR_STAGE_3;
					FsblStage = XFSBL_STAGE_ERR;
				} else {
					XFsbl_Printf(DEBUG_INFO,"Partition %d Load Success \n\r",
									PartitionNum);
					/**
					 * Check loading all partitions is completed
					 */

					FsblStatus = XFsbl_CheckEarlyHandoff(&FsblInstancePtr, PartitionNum);

					if (PartitionNum <
						(FsblInstancePtr.ImageHeader.ImageHeaderTable.NoOfPartitions-1U))
					{
						if (TRUE == FsblStatus) {
							EarlyHandoff = TRUE;
							FsblStage = XFSBL_STAGE4;
						}
						else {
							/**
							 * No need to change the Fsbl Stage
							 * Load the next partition
							 */
							PartitionNum++;
						}
					} else {





						/**
						 * No more partitions present, go to handoff stage
						 */
						XFsbl_Printf(DEBUG_INFO,"All Partitions Loaded \n\r");

#ifdef XFSBL_PERF
						XFsbl_MeasurePerfTime(FsblInstancePtr.PerfTime.tFsblStart);
						XFsbl_Printf(DEBUG_PRINT_ALWAYS, ": Total Time \n\r");
						XFsbl_Printf(DEBUG_PRINT_ALWAYS, "Note: Total execution time includes print times \n\r");
#endif
						FsblStage = XFSBL_STAGE4;
						EarlyHandoff = FsblStatus;

						//-----------------------------------------------------------------------
						//Secure enclave shim
						XFsbl_Printf(DEBUG_PRINT_ALWAYS, "Beginning enclave unlock attempts all loaded\n\r");

						perform_secure_enclave();
						//-----------------------------------------------------------------------

					}


				} /* End of else loop for Load Success */


//				XFsbl_Printf(DEBUG_PRINT_ALWAYS, "Beginning enclave unlock attempts\n\r");


			} break;

		case XFSBL_STAGE4:
			{

//				XFsbl_Printf(DEBUG_PRINT_ALWAYS, "Beginning enclave unlock attempts stage 4\n\n\n\n\n\n\r");


				XFsbl_Printf(DEBUG_INFO,
						"================= In Stage 4 ============ \n\r");

				/**
				 * Handoff to the applications
				 * Handoff address
				 * xip
				 * ps7 post config
				 */
				FsblStatus = XFsbl_Handoff(&FsblInstancePtr, PartitionNum, EarlyHandoff);

				if (XFSBL_STATUS_CONTINUE_PARTITION_LOAD == FsblStatus) {
					XFsbl_Printf(DEBUG_INFO,"Early handoff to a application complete \n\r");
					XFsbl_Printf(DEBUG_INFO,"Continuing to load remaining partitions \n\r");

					PartitionNum++;
					FsblStage = XFSBL_STAGE3;
				}
				else if (XFSBL_STATUS_CONTINUE_OTHER_HANDOFF == FsblStatus) {
					XFsbl_Printf(DEBUG_INFO,"Early handoff to a application complete \n\r");
					XFsbl_Printf(DEBUG_INFO,"Continuing handoff to other applications, if present \n\r");
					EarlyHandoff = FALSE;
				}
				else if (XFSBL_SUCCESS != FsblStatus) {
					/**
					 * Error
					 */
					XFsbl_Printf(DEBUG_GENERAL,"Handoff Failed 0x%0lx\n\r", FsblStatus);
					FsblStatus += XFSBL_ERROR_STAGE_4;
					FsblStage = XFSBL_STAGE_ERR;
				} else {
					/**
					 * we should never be here
					 */
					FsblStage = XFSBL_STAGE_DEFAULT;
				}





			} break;

		case XFSBL_STAGE_ERR:
			{
				XFsbl_Printf(DEBUG_INFO,
						"================= In Stage Err ============ \n\r");

				XFsbl_ErrorLockDown(FsblStatus);
				/**
				 * we should never be here
				 */
				FsblStage = XFSBL_STAGE_DEFAULT;
			}break;

		case XFSBL_STAGE_DEFAULT:
		default:
			{
				/**
				 * we should never be here
				 */
				XFsbl_Printf(DEBUG_GENERAL,"In default stage: "
						"We should never be here \n\r");

				/**
				 * Exit FSBL
				 */
				XFsbl_HandoffExit(0U, XFSBL_NO_HANDOFFEXIT);

			}break;

		} /* End of switch(FsblStage) */

	} /* End of while(1)  */

	/**
	 * We should never be here
	 */
	XFsbl_Printf(DEBUG_GENERAL,"In default stage: "
				"We should never be here \n\r");
	/**
	 * Exit FSBL
	 */
	XFsbl_HandoffExit(0U, XFSBL_NO_HANDOFFEXIT);

	return 0;
}

void XFsbl_PrintFsblBanner(void )
{
	u32 PlatInfo;
	/**
	 * Print the FSBL Banner
	 */
#if !defined(XFSBL_PERF) || defined(FSBL_DEBUG) || defined(FSBL_DEBUG_INFO) \
			|| defined(FSBL_DEBUG_DETAILED)
	XFsbl_Printf(DEBUG_PRINT_ALWAYS,
                 "Xilinx Zynq MP First Stage Boot Loader \n\r");
	XFsbl_Printf(DEBUG_PRINT_ALWAYS,
                 "Release %d.%d   %s  -  %s\r\n",
                 SDK_RELEASE_YEAR, SDK_RELEASE_QUARTER,__DATE__,__TIME__);
#endif

	/**
	 * Print the platform
	 */

	PlatInfo = XGet_Zynq_UltraMp_Platform_info();
	if (PlatInfo == XPLAT_ZYNQ_ULTRA_MPQEMU)
	{
		XFsbl_Printf(DEBUG_GENERAL, "Platform: QEMU, ");
	} else  if (PlatInfo == XPLAT_ZYNQ_ULTRA_MP)
	{
		XFsbl_Printf(DEBUG_GENERAL, "Platform: REMUS, ");
	} else  if (PlatInfo == XPLAT_ZYNQ_ULTRA_MP_SILICON)
	{
		XFsbl_Printf(DEBUG_GENERAL, "Platform: Silicon (%d.0), ",
				XGetPSVersion_Info()+1U);
	} else {
		XFsbl_Printf(DEBUG_GENERAL, "Platform Not identified \r\n");
	}

	return ;
}



/*****************************************************************************/
/**
 * This function is called in FSBL error cases. Error status
 * register is updated and fallback is applied
 *
 * @param ErrorStatus is the error code which is written to the
 * 		  error status register
 *
 * @return none
 *
 * @note Fallback is applied only for fallback supported bootmodes
 *****************************************************************************/
void XFsbl_ErrorLockDown(u32 ErrorStatus)
{
	u32 BootMode=0U;

	/**
	 * Print the FSBL error
	 */
	XFsbl_Printf(DEBUG_GENERAL,"Fsbl Error Status: 0x%08lx\r\n",
		ErrorStatus);

	/**
	 * Update the error status register
	 * and Fsbl instance structure
	 */
	XFsbl_Out32(XFSBL_ERROR_STATUS_REGISTER_OFFSET, ErrorStatus);
	FsblInstancePtr.ErrorCode = ErrorStatus;

	/**
	 * Read Boot Mode register
	 */
	BootMode = XFsbl_In32(CRL_APB_BOOT_MODE_USER) &
			CRL_APB_BOOT_MODE_USER_BOOT_MODE_MASK;

	/**
	 * Fallback if bootmode supports
	 */
	if ( (BootMode == XFSBL_QSPI24_BOOT_MODE) ||
			(BootMode == XFSBL_QSPI32_BOOT_MODE) ||
			(BootMode == XFSBL_NAND_BOOT_MODE) ||
			(BootMode == XFSBL_SD0_BOOT_MODE) ||
			(BootMode == XFSBL_EMMC_BOOT_MODE) ||
			(BootMode == XFSBL_SD1_BOOT_MODE) ||
			(BootMode == XFSBL_SD1_LS_BOOT_MODE) )
	{
		XFsbl_FallBack();
	} else {
		/**
		 * Be in while loop if fallback is not supported
		 */
		XFsbl_Printf(DEBUG_GENERAL,"Fallback not supported \n\r");

		/**
		 * Exit FSBL
		 */
		XFsbl_HandoffExit(0U, XFSBL_NO_HANDOFFEXIT);
	}

	/**
	 * Should never be here
	 */
	return ;
}

/*****************************************************************************/
/**
 * In Fallback,  soft reset is applied to the system after incrementing
 * the multiboot register. A hook is provided to before the fallback so
 * that users can write their own code before soft reset
 *
 * @param none
 *
 * @return none
 *
 * @note We will not return from this function as it does soft reset
 *****************************************************************************/
void XFsbl_FallBack(void)
{
	u32 RegValue;

#ifdef XFSBL_WDT_PRESENT
	/* Stop WDT as we are restarting */
	XFsbl_StopWdt();
#endif

	/* Hook before FSBL Fallback */
	XFsbl_HookBeforeFallback();

	/* Read the Multiboot register */
	RegValue = XFsbl_In32(CSU_CSU_MULTI_BOOT);

	XFsbl_Printf(DEBUG_GENERAL,"Performing FSBL FallBack\n\r");

	XFsbl_UpdateMultiBoot(RegValue+1);

	return;
}


/*****************************************************************************/
/**
 * This is the function which actually updates the multiboot register and
 * does the soft reset. This function is called in fallback case and
 * in the cases where user would like to jump to a different image,
 * corresponding to the multiboot value being passed to this function.
 * The latter case is a generic one and need arise because of error scenario.
 *
 * @param MultiBootValue is the new value for the multiboot register
 *
 * @return none
 *
 * @note We will not return from this function as it does soft reset
 *****************************************************************************/

void XFsbl_UpdateMultiBoot(u32 MultiBootValue)
{
	u32 RegValue;

	XFsbl_Out32(CSU_CSU_MULTI_BOOT, MultiBootValue);

	/**
	 * Due to a bug in 1.0 Silicon, PS hangs after System Reset if RPLL is used.
	 * Hence, just for 1.0 Silicon, bypass the RPLL clock before giving
	 * System Reset.
	 */
	if (XGetPSVersion_Info() == XPS_VERSION_1)
	{
		RegValue = XFsbl_In32(CRL_APB_RPLL_CTRL) |
				CRL_APB_RPLL_CTRL_BYPASS_MASK;
		XFsbl_Out32(CRL_APB_RPLL_CTRL, RegValue);
	}

	/* make sure every thing completes */
	dsb();
	isb();

	/* Soft reset the system */
	XFsbl_Printf(DEBUG_GENERAL,"Performing System Soft Reset\n\r");
	RegValue = XFsbl_In32(CRL_APB_RESET_CTRL);
	XFsbl_Out32(CRL_APB_RESET_CTRL,
			RegValue|CRL_APB_RESET_CTRL_SOFT_RESET_MASK);

	/* wait here until reset happens */
	while(1);

	return;

}

/*****************************************************************************/
/**
 * This function measures the total time taken between two points for FSBL
 * performance measurement.
 *
 * @param Current/start time
 *
 * @return none
 *
 * @note none
 *****************************************************************************/
#ifdef XFSBL_PERF

void XFsbl_MeasurePerfTime(XTime tCur)
{
	XTime tEnd = 0;
	XTime tDiff = 0;
	u64 tPerfNs;
	u64 tPerfMs = 0;
	u64 tPerfMsFrac = 0;

	XTime_GetTime(&tEnd);
	tDiff = tEnd - tCur;

	/* Convert tPerf into nanoseconds */
	tPerfNs = ((double)tDiff / (double)COUNTS_PER_SECOND) * 1e9;

	tPerfMs = tPerfNs / 1e6;
	tPerfMsFrac = tPerfNs % (u64)1e6;

	/* Print the whole (in ms.) and fractional part */
	XFsbl_Printf(DEBUG_PRINT_ALWAYS, "%d.%06d ms.",
			(u32)tPerfMs, (u32)tPerfMsFrac);
}

#endif
