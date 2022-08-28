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

struct IOAsyncDeviceHeader
	4 RequestListHead
	4 RequestListTail

	4 RXFunc
	4 TXFunc

	4 Context

	IOTypeaheadBufferHeader_SIZEOF ReceiveBuffer
endstruct

fnptr IOAsyncRXFunc { header -- c bytes ok }
fnptr IOAsyncTXFunc { buf header -- bytes ok }

extern IOAsyncDeviceInitialize { context txfunc rxfunc rxsizelog pri header -- ok }

extern IOAsyncDPCFunction { context1 context2 -- }

extern IOAsyncDeviceRead { timeout flags kflags offset mdl header -- ok }
extern IOAsyncDeviceWrite { flags kflags offset mdl header -- ok }
extern IOAsyncDriverCancel { mdl -- }