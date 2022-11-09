struct AmsMessage
	OSMessageHeader_SIZEOF Header
	4 Status
	4 Datum
endstruct

const AMSBODYLENGTH (AmsMessage_SIZEOF OSMessageHeader_SIZEOF -)

const AMSPASSWORDMAX 128
const AMSNAMEMAX     128

struct AmsMessageQueryByUID
	4 GID

	4 PoolQuota
	4 PagedPoolQuota
	4 VirtualMemoryQuota
	4 WorkingSetQuota

	AMSNAMEMAX UserName

	OSFILEPATHMAX Home
	OSFILEPATHMAX Shell
endstruct

struct AmsMessageQueryByGID
	AMSNAMEMAX GroupName
endstruct

struct AmsMessageQueryUIDByName
	AMSNAMEMAX UserName
endstruct

struct AmsMessageQueryGIDByName
	AMSNAMEMAX GroupName
endstruct

struct AmsMessageNewSession
	4 UID
	AMSPASSWORDMAX Password
endstruct

const AMSSECTIONSIZE (AmsMessageQueryByUID_SIZEOF
	AmsMessageQueryByGID_SIZEOF _max
	AmsMessageQueryUIDByName_SIZEOF _max
	AmsMessageQueryGIDByName_SIZEOF _max
	AmsMessageNewSession_SIZEOF _max)

const AMSAPI_QUERY_BY_UID        0
const AMSAPI_QUERY_UID_BY_NAME   1
const AMSAPI_QUERY_GID_BY_NAME   2
const AMSAPI_QUERY_BY_GID        3
const AMSAPI_COMPLETE_CONNECTION 4