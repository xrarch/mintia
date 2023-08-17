extern MmSectionCreateObject { anonsize permissions name -- sectionobject ok }
extern MmSectionCreate { anonsize permissions name -- sectionhandle ok }

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

externptr MmAnonymousPageCount