struct AmsClient
	4 ClientID
	4 SectionBase
	4 Flags
endstruct

const AMSCLIENTFLAG_IMPERSONATING 1

extern AmsClientCreate { cid -- client ok }
extern AmsClientDelete { client -- }
extern AmsClientInitialize { cid client -- }

extern AmsInternalLogon { flags password uid processhandle -- ok }
extern AmsInternalChangePassword { oldpassword newpassword uid processhandle -- ok }

extern AmsInternalEmumerateUsers { context max buf -- nextcontext count ok }
extern AmsInternalEmumerateGroups { context max buf -- nextcontext count ok }

extern AmsQueryByUserPtr { info userptr -- ok }
extern AmsQueryByGroupPtr { info groupptr -- ok }

fnptr AmsDispatchFunction { msg client -- ok }

extern AmsDbOpen { -- ok }
extern AmsDbClose { -- }

extern AmsDbUserWrite { -- ok }
extern AmsDbGroupWrite { -- ok }

extern AmsDbUserGetByName { username -- userptr ok }
extern AmsDbUserGetByUID { uid -- userptr ok }
extern AmsDbUserGetName { userptr -- username }
extern AmsDbUserGetProperty { property userptr -- value ok }
extern AmsDbUserSetProperty { value property userptr -- ok }
extern AmsDbUserGetIterator { -- iterator ok }
extern AmsDbUserNext { iterator -- userptr nextiterator ok }

extern AmsDbGroupGetByName { groupname -- groupptr ok }
extern AmsDbGroupGetByGID { gid -- groupptr ok }
extern AmsDbGroupGetName { groupptr -- groupname }
extern AmsDbGroupGetProperty { property groupptr -- value ok }
extern AmsDbGroupGetIterator { -- iterator ok }
extern AmsDbGroupNext { iterator -- groupptr nextiterator ok }

extern AmsGroupDelete { gid processhandle -- ok }
extern AmsUserDelete { uid processhandle -- ok }

extern AmsGroupCreate { info processhandle -- gid ok }
extern AmsUserCreate { password info processhandle -- uid ok }

extern AmsGroupEdit { info gid processhandle -- ok }
extern AmsUserEdit { info uid processhandle -- ok }

externptr AmsMemoryInformation