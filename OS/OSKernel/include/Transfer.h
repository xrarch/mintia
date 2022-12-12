struct IOTransfer
	(MmMDLHeader_SIZEOF IOCLUSTERMAX PAGESHIFT >> 1 + 4 * +) MDL

	4 SwapFile
	4 TransferTable
	4 Next
endstruct

extern IOTransferComplete { transfer -- }