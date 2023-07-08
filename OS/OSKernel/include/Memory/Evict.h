fnptr MmEvictionFunction { pfdbe -- }

const MMEVICTFLAG_MODIFIED   1
const MMEVICTFLAG_DELETED    2
const MMEVICTFLAG_PRIVATE    16
const MMEVICTFLAG_WORKINGSET 32 // indicates that a page is considered for
                                // working set accounting.
const MMEVICTFLAG_VALID      64 // file cache
const MMEVICTFLAG_IOINPROGRESS 128

const MMEVICTTYPE_FILE       0
const MMEVICTTYPE_ANON       1

extern MmEvictablePageInitialize { flags evictabletype pfdbe -- }
extern MmEvictablePageGet { flags evictabletype priority -- pfdbe ok }
extern MmEvictablePageDelete { pfdbe -- }
extern MmEvictablePageDereference { pfdbe -- oldcount }
extern MmEvictablePageReference { pfdbe -- oldcount }

extern MmEvictablePageModify { pfdbe process -- }

extern MmEvictablePageWait { process pri pfdbe -- ok }
extern MmEvictablePageSatisfy { pfdbe -- }
extern MmEvictablePageStartIO { pfdbe -- }

externptr MmModifiedPageCount
externptr MmModifiedFilePageCount

externptr MmEvictablePageCount

externptr MmModifiedPageMaximum
externptr MmModifiedPageMinimum