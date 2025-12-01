struct IOTransfer
	(MmMDLHeader_SIZEOF IOCLUSTERMAX PAGESHIFT >> 1 + 4 * +) MDL

	4 PageFile
	4 State
	4 Next
	4 Prev // only used in the low space list; stores pagefile offset when active
endstruct

const IOTRANSFER_ACTIVE      0
const IOTRANSFER_INACTIVE    1

extern IOTransferComplete { transfer -- }