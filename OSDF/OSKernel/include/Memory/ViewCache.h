externptr MmBufferMappings

extern MmBufferMap { bcb -- }
extern MmBufferUnmap { bcb -- }
extern MmBufferTruncate { offset bcb -- }
extern MmBufferDirty { bcb -- }

extern MmBufferPin { bcb -- ok }
extern MmBufferUnpin { bcb -- }

extern MmViewPagePin { vaddr -- pfdbe ok }
extern MmViewPageUnpin { pfdbe -- }

externptr MmViewCachePageCount