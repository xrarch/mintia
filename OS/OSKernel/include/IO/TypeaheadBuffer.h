struct IOTypeaheadBufferHeader
	4 Paged

	4 Buffer
	4 BufferSize
	4 RemainingSpace
	4 ReadIndex
	4 WriteIndex
	4 QuotaBlock

	4 UserBuffer
	4 UserBufferIndex
	4 UserTransferLength
endstruct

extern IOTypeaheadBufferInitialize { sizelog quotablock pri header -- ok }
extern IOTypeaheadBufferUninitialize { header -- }

extern IOTypeaheadBufferCopyIn { bytestocopy buf header -- bytescopied ok }
extern IOTypeaheadBufferCopyOut { bytestocopy buf switch header -- bytescopied ok }
extern IOTypeaheadBufferRubout { header -- value ok }

extern IOTypeaheadBufferComplete { header -- bytescopied }