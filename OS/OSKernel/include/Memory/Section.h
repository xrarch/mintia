extern MmSectionObjectDelete { object -- }

struct MmSection
	4 PageProtection // processes may only map with protections that are a subset of this

	4 AnonSize
	4 AnonPrototypePageTable

	4 NoCommit

	4 QuotaBlock

	KeMutex_SIZEOF PrototypePageTableMutex
endstruct

const MMSWAPPAGE_NONE       -1
const MMSWAPPAGE_DEMANDZERO -2

const MMWRITEMODE_NONE         0
const MMWRITEMODE_INPROGRESS   1
const MMWRITEMODE_DEFERREDFREE 2

extern MmSectionPPTLock { sectionobject -- ok }
extern MmSectionPPTUnlock { sectionobject -- }

extern MmSectionObjectCreateObject { pageprotection anonsize permissions name -- sectionobject ok }
extern MmSectionObjectCreate { pageprotection anonsize permissions name -- sectionhandle ok }

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

extern MmAnonymousSwapIn { pri pte pno -- pfdbe pfn ok }

extern MmAnonymousPageAlloc { pte pri -- pfdbe pfn ok }
extern MmAnonymousPageDelete { ipl pfdbe -- }
extern MmSectionPageGet { pri sectionoffset sectionobject -- phyaddr pfdbe ok }

externptr MmAnonymousPageCount
externptr MmAnonymousEvictableFunctions