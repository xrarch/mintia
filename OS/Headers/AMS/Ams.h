extern AmsInit { -- ok }
extern AmsFree { -- }
extern AmsClearCache { -- }
extern AmsUserInfoInitialize { info -- }
extern AmsGroupInfoInitialize { info -- }

extern AmsQueryUIDByName { name -- uid ok }
extern AmsQueryGIDByName { name -- gid ok }
extern AmsQueryByUID { info uid -- ok }
extern AmsQueryByGID { info gid -- ok }
extern AmsLogon { flags password uid -- ok }
extern AmsChangePassword { oldpassword newpassword uid -- ok }

extern AmsEmumerateUsers { -- enumeration ok }
extern AmsEmumerateGroups { -- enumeration ok }

extern AmsFreeEnumeration { enumeration -- }

extern AmsRunForEachUserEnumeration { context func enumeration -- ok }
extern AmsRunForEachGroupEnumeration { context func enumeration -- ok }

extern AmsIndexUserEnumeration { index enumeration -- enum ok }
extern AmsIndexGroupEnumeration { index enumeration -- enum ok }

extern AmsCreateUser { password info -- uid ok }
extern AmsCreateGroup { info -- gid ok }

extern AmsDeleteUser { uid -- ok }
extern AmsDeleteGroup { gid -- ok }

extern AmsEditUser { info uid -- ok }
extern AmsEditGroup { info gid -- ok }

const AMSPASSWORDMAX 32
const AMSNAMEMAX     32

struct AmsUserInformation
	4 GID

	4 PoolQuota
	4 PagedPoolQuota
	4 VirtualMemoryQuota
	4 WorkingSetQuota

	AMSNAMEMAX UserName

	OSFILEPATHMAX Home
	OSFILEPATHMAX Shell

	32 Reserved
endstruct

struct AmsGroupInformation
	AMSNAMEMAX GroupName

	32 Reserved
endstruct

struct AmsUserEnumeration
	4 UID
	AmsUserInformation_SIZEOF Info
endstruct

struct AmsGroupEnumeration
	4 GID
	AmsGroupInformation_SIZEOF Info
endstruct

fnptr AmsEnumerationFunction { context enum index -- ok }