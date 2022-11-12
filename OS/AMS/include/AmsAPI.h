#include "<ll>/AMS/Ams.h"

struct AmsMessage
	OSMessageHeader_SIZEOF Header
	4 Status
endstruct

const AMSBODYLENGTH (AmsMessage_SIZEOF OSMessageHeader_SIZEOF -)

struct AmsMessageQueryUIDByName
	AMSNAMEMAX UserName
endstruct

struct AmsMessageQueryGIDByName
	AMSNAMEMAX GroupName
endstruct

struct AmsMessageLogon
	4 UID
	4 Flags
	AMSPASSWORDMAX Password
endstruct

struct AmsMessageChangePassword
	4 UID
	AMSPASSWORDMAX OldPassword
	AMSPASSWORDMAX NewPassword
endstruct

const AMSSECTIONSIZE (AmsUserInformation_SIZEOF
	AmsGroupInformation_SIZEOF _max
	AmsMessageQueryUIDByName_SIZEOF _max
	AmsMessageQueryGIDByName_SIZEOF _max
	AmsMessageLogon_SIZEOF _max)

const AMSAPI_QUERY_BY_UID        0
const AMSAPI_QUERY_UID_BY_NAME   1
const AMSAPI_QUERY_GID_BY_NAME   2
const AMSAPI_QUERY_BY_GID        3
const AMSAPI_COMPLETE_CONNECTION 4
const AMSAPI_LOGON               5
const AMSAPI_CHANGE_PASSWORD     6