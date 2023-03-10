struct ObTypeInitializer
	4 Name
	4 Tag
	4 BodySize

	4 OpenFunction
	4 CloseFunction
	4 DeleteFunction
	4 ParseFunction
	4 SetSecurityFunction

	4 Paged
	4 WaitOffset
endstruct

fnptr ObTypeOpenFunction { access object process -- ok }
fnptr ObTypeCloseFunction { access object process -- }
fnptr ObTypeDeleteFunction { object -- }
fnptr ObTypeParseFunction { flags path initialobject process -- reparsepath object ok }
fnptr ObTypeSetSecurityFunction { uid gid permissions object -- ok }

const OBFLAGS_PERMANENT 1

externptr ObTypeObjectType
externptr ObTypeDirectoryType
externptr ObRootDirectoryObject
externptr ObObjectTypesDirectoryObject
externptr ObRootRwLock
externptr ObReaperListHead

extern ObInitPhase0 { -- }
extern ObInitPhase1 { -- }

extern ObHandleDestroyFunction { entryptr handle handletable -- ok }

extern ObObjectTableCreate { quotablock process -- handletable ok }

extern ObObjectCreate { name flags permissions npquotabias pquotabias bodysize type -- object ok }
extern ObObjectFree { object -- ok }
extern ObObjectDeallocate { object -- }

extern ObTypeInitializerInitialize { initializer -- }
extern ObTypeCreate { initializer -- type ok }

extern ObObjectReferenceByHandle { type handle -- access object ok }
extern ObObjectReferenceByHandleProcess { type handle process -- access object ok }

extern ObObjectClose { handle -- ok }
extern ObObjectCloseProcess { handle process -- ok }

extern ObObjectOpen { nocheck access object -- handle ok }
extern ObObjectOpenProcess { nocheck access object process -- handle ok }

extern ObObjectReferenceByPointerCapturedHeader { npheader -- oldcount }
extern ObObjectReferenceByPointer { object -- oldcount }

extern ObObjectDereferenceByPointerCapturedHeader { object npheader -- oldcount }
extern ObObjectDereferenceByPointer { object -- oldcount }

extern ObObjectInheritPermissions { destobject srcobject -- }

extern ObConditionallyReferenceObject { object -- ok }

extern ObObjectReferences { object -- refs }
extern ObObjectNonpagedHeader { object -- npheader }
extern ObObjectPagedHeader { object -- pheader }
extern ObObjectName { object -- name }
extern ObObjectType { object -- type }
extern ObObjectUIDGID { object -- uid gid }
extern ObObjectPermissions { object -- permissions }
extern ObObjectQuotaBlock { object -- quotablock }

extern ObReaperPop { -- object }

extern ObObjectQueryObject { object query -- ok }
extern ObObjectQuery { objecthandle query -- ok }

extern ObHandleDuplicateObject { handle access srcprocessobject destprocessobject -- newhandle ok }
extern ObHandleDuplicate { handle access srcprocesshandle destprocesshandle -- newhandle ok }

extern ObObjectSetUIDGIDPermissions { uid gid permissions object -- }

extern ObSetSecurityObject { uid gid permissions object -- ok }
extern ObSetSecurity { uid gid permissions handle -- ok }