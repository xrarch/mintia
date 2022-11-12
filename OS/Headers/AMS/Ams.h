extern AmsInit { -- ok }
extern AmsFree { -- }
extern AmsClearCache { -- }

extern AmsQueryUIDByName { name -- uid ok }
extern AmsQueryGIDByName { name -- gid ok }
extern AmsQueryByUID { info uid -- ok }
extern AmsQueryByGID { info gid -- ok }
extern AmsLogon { flags password uid -- ok }

const AMSPASSWORDMAX 128
const AMSNAMEMAX     128

struct AmsUserInformation
	4 GID

	4 PoolQuota
	4 PagedPoolQuota
	4 VirtualMemoryQuota
	4 WorkingSetQuota

	AMSNAMEMAX UserName

	OSFILEPATHMAX Home
	OSFILEPATHMAX Shell

	64 Reserved
endstruct

struct AmsGroupInformation
	AMSNAMEMAX GroupName

	64 Reserved
endstruct