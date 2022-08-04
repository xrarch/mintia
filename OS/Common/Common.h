#ifdef OSLOADER

const COMSTATUS_NOT_FOUND           LDRSTATUS_NOT_FOUND
const COMSTATUS_UNAVAILABLE_ADDRESS LDRSTATUS_ADDRESS_NOT_AVAILABLE
const COMSTATUS_BAD_EXECUTABLE      LDRSTATUS_BAD_EXECUTABLE
const COMSTATUS_STRIPPED_EXECUTABLE LDRSTATUS_STRIPPED_EXECUTABLE
const COMSTATUS_INVALID_ARGUMENT    LDRSTATUS_INVALID_ARGUMENT
const COMSTATUS_EXEC_NOT_FOR_ARCH   LDRSTATUS_EXEC_NOT_FOR_ARCH
const COMSTATUS_NO_SYMBOL           LDRSTATUS_NOT_FOUND

#endif

#ifdef OSDLL

const COMSTATUS_NOT_FOUND           STATUS_NOT_FOUND
const COMSTATUS_UNAVAILABLE_ADDRESS STATUS_UNAVAILABLE_ADDRESS
const COMSTATUS_BAD_EXECUTABLE      STATUS_BAD_EXECUTABLE
const COMSTATUS_STRIPPED_EXECUTABLE STATUS_STRIPPED_EXECUTABLE
const COMSTATUS_INVALID_ARGUMENT    STATUS_INVALID_ARGUMENT
const COMSTATUS_EXEC_NOT_FOR_ARCH   STATUS_EXEC_NOT_FOR_ARCH
const COMSTATUS_NO_SYMBOL           STATUS_NO_SYMBOL

#endif

struct ComBitmapHeader
	4 Data
	4 SizeInBits
endstruct

extern ComBitmapInitialize { sizeinbits data header -- }
extern ComBitmapDump { header -- }
extern ComBitmapGetData { header -- data }
extern ComBitmapClear { header -- }
extern ComBitmapFindRun { hint runlength header -- offset ok }
extern ComBitmapSetBits { runlength index header -- }
extern ComBitmapClearBits { runlength index header -- }
extern ComBitmapBitGet { index header -- value }
extern ComBitmapCheckClearBits { runlength index header -- isclear }