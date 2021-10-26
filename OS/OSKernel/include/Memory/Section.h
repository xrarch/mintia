extern MmSectionObjectDelete { object -- }

struct MmSection
	4 PageProtection // processes may only map with protections that are a subset of this

	4 FileObject

	4 AnonSize
	4 AnonPrototypePageTable

	KeMutex_SIZEOF PrototypePageTableMutex

	4 NoCommit
endstruct

extern MmSectionPPTLock { sectionobject -- ok }
extern MmSectionPPTUnlock { sectionobject -- }

extern MmSectionObjectCreateObject { pageprotection anonsize fileobject owninguser permissions name -- sectionobject ok }
extern MmSectionObjectCreate { pageprotection anonsize filehandle owninguser permissions name -- sectionhandle ok }

extern MmSectionMapViewProcessObject { length startva sectionoffset sectionobject processobject pageprotection flags -- realva ok }
extern MmUnmapViewProcess { length vaddr processobject -- ok }

extern MmSectionPageGet { sectionoffset sectionobject -- phyaddr pfdbe ok }