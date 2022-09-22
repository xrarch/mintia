extern MmSectionObjectDelete { object -- }

struct MmSection
	4 PageProtection // processes may only map with protections that are a subset of this

	4 AnonSize
	4 AnonPrototypePageTable

	4 NoCommit

	4 QuotaBlock

	4 Mutex

	KeMutex_SIZEOF PrototypePageTableMutex
endstruct

extern MmSectionPPTLock { sectionobject -- ok }
extern MmSectionPPTUnlock { sectionobject -- }

extern MmSectionCreateObject { pageprotection anonsize permissions name -- sectionobject ok }
extern MmSectionCreate { pageprotection anonsize permissions name -- sectionhandle ok }

extern MmFilePrepareForMap { prot endofview offset fileobject -- ok }
extern MmFileUnprepareForMap { fileobject -- }

extern MmMapViewProcessObject { length startva sectionoffset mappedobject processobject pageprotection flags -- realva ok }
extern MmMapView { length startva sectionoffset mappedhandle processhandle pageprotection flags -- realva ok }
extern MmUnmapViewProcess { length vaddr processobject -- ok }
extern MmUnmapView { length vaddr processhandle -- ok }

extern MmRemapViewProcess { pageprotection length vaddr processobject -- ok }
extern MmRemapView { pageprotection length vaddr processhandle -- ok }

extern MmAllocateProcessObject { length startva processobject pageprotection flags -- realva ok }
extern MmAllocate { length startva processhandle pageprotection flags -- realva ok }

extern MmFlushViewProcess { length vaddr processobject -- ok }
extern MmFlushView { length vaddr processhandle -- ok }

extern MmAnonymousSwapIn { pri pte pno -- pfdbe pfn ok }

extern MmAnonymousPageAlloc { pte pri -- pfdbe pfn ok }
extern MmAnonymousPageGet { pte pri -- pfdbe pfn ok }
extern MmAnonymousPageDelete { ipl pfdbe -- }
extern MmSectionPageGet { pri sectionoffset sectionobject -- phyaddr pfdbe ok }

externptr MmAnonymousPageCount
externptr MmAnonymousEvictableFunctions