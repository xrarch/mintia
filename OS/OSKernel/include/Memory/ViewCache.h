externptr MmBufferMappings

extern MmBufferMap { bcb -- }
extern MmBufferUnmap { bcb -- }
extern MmBufferTruncate { offset bcb -- }
extern MmBufferDirty { bcb -- }

extern MmBufferPin { bcb -- ok }
extern MmBufferUnpin { bcb -- }

externptr MmViewCachePageCount