extern MmSectionObjectDelete { object -- }

struct MmSection
	4 PageProtection // processes may only map with protections that are a subset of this

	4 FileObject

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

extern MmSectionObjectCreateObject { pageprotection anonsize fileobject permissions name -- sectionobject ok }
extern MmSectionObjectCreate { pageprotection anonsize filehandle permissions name -- sectionhandle ok }

extern MmSectionUnprepare { sectionobject -- }

extern MmSectionMapViewProcessObject { length startva sectionoffset sectionobject processobject pageprotection flags -- realva ok }
extern MmSectionMapView { length startva sectionoffset sectionhandle processhandle pageprotection flags -- realva ok }
extern MmUnmapViewProcess { length vaddr processobject -- ok }
extern MmUnmapView { length vaddr processhandle -- ok }

extern MmRemapViewProcess { pageprotection length vaddr processobject -- ok }
extern MmRemapView { pageprotection length vaddr processhandle -- ok }

extern MmAnonymousSwapIn { pri pte pno -- pfdbe pfn ok }

extern MmAnonymousPageAlloc { pte pri -- pfdbe pfn ok }
extern MmSectionPageGet { sectionoffset sectionobject -- phyaddr pfdbe ok }

externptr MmAnonymousPageCount
externptr MmAnonymousEvictableFunctions