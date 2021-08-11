// needs Kernel.h

const IOCACHEPAGEBUCKETS 16 // must be a power of two
const IOCACHEPAGESHIFT 4
const IOCACHEPAGEMASK (IOCACHEPAGEBUCKETS 1 -)

struct IOCacheInfoBlock
	KeMutex_SIZEOF Mutex
	(IOCACHEPAGEBUCKETS 4 *) PageBucketListHeads
endstruct

// should be kept in sync with MmPageFrameEntryEvictable
struct IOPageFrameEntryCache
	4 Next
	4 PFN
	4 Prev
	4 EvictionFlags
	4 EvictionFunction
	4 References
	4 Context2
	4 Context3
	4 Context4
	4 Context5
	4 ModifiedPTE
	4 FCB
	4 Flags
	4 OffsetInFile
	4 NextCachePage
	4 PrevCachePage
endstruct

const IOCACHEPAGEFLAG_VALID 1 // does the page contain valid data (does it need to be read in)?
const IOCACHEPAGEFLAG_DIRTY 2 // is the page dirty (does it need to be written out)?

extern IOCacheInfoBlockCreate { -- cacheblock ok }

extern IOCacheFileRead { flags length bufsize offset buffer fcb lastmode -- bytesread ok }

extern IOCacheInitialize { fcb -- cacheblock ok }