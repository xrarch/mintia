struct AmsClient
	4 SectionBase
endstruct

extern AmsClientCreate { -- client ok }
extern AmsClientDelete { client -- }
extern AmsClientInitialize { client -- }

fnptr AmsDispatchFunction { msg client -- ok }

extern AmsDbOpen { -- ok }
extern AmsDbClose { -- }

extern AmsDbUserGetByName { username -- userptr ok }
extern AmsDbUserGetByUID { uid -- userptr ok }
extern AmsDbUserGetName { userptr -- username }
extern AmsDbUserGetProperty { property userptr -- value ok }

extern AmsDbGroupGetByName { groupname -- groupptr ok }
extern AmsDbGroupGetByGID { gid -- groupptr ok }
extern AmsDbGroupGetName { groupptr -- groupname }
extern AmsDbGroupGetProperty { property groupptr -- value ok }

externptr AmsMemoryInformation