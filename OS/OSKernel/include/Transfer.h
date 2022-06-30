struct IOTransfer
	(MmMDLHeader_SIZEOF IOTRANSFERMAX PAGESHIFT >> 1 + 4 * +) MDL

	4 TransferTable
	4 Next
endstruct

extern IOTransferComplete { transfer -- }