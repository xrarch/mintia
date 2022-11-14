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

const AMSSECTIONSIZE 8192

struct AmsMessageEnumerate
	4 ReturnedIDs
	4 Context // -1 to search from beginning. if -1 is returned here, the search is over, otherwise there's more
endstruct

const ENUMIDBYTES  (AMSSECTIONSIZE AmsMessageEnumerate_SIZEOF -)
const ENUMUSERMAX  (ENUMIDBYTES AmsUserEnumeration_SIZEOF /)
const ENUMGROUPMAX (ENUMIDBYTES AmsGroupEnumeration_SIZEOF /)

struct AmsMessageCreateUser
	4 UID // only returned
	AMSPASSWORDMAX Password
	AmsUserInformation_SIZEOF Info
endstruct

struct AmsMessageCreateGroup
	4 GID // only returned
	AmsGroupInformation_SIZEOF Info
endstruct

struct AmsMessageEditUser
	4 UID
	4 Delete
	AmsUserInformation_SIZEOF Info
endstruct

struct AmsMessageEditGroup
	4 GID
	4 Delete
	AmsGroupInformation_SIZEOF Info
endstruct

const AMSAPI_QUERY_BY_UID        0
const AMSAPI_QUERY_UID_BY_NAME   1
const AMSAPI_QUERY_GID_BY_NAME   2
const AMSAPI_QUERY_BY_GID        3
const AMSAPI_COMPLETE_CONNECTION 4
const AMSAPI_LOGON               5
const AMSAPI_CHANGE_PASSWORD     6
const AMSAPI_ENUMERATE_USERS     7
const AMSAPI_ENUMERATE_GROUPS    8
const AMSAPI_CREATE_USER         9
const AMSAPI_CREATE_GROUP        10
const AMSAPI_EDIT_USER           11
const AMSAPI_EDIT_GROUP          12