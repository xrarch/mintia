extern VcInitPhase1 { -- }

const FILEVIEWSHIFT 15
const FILEVIEWGRANULARITY (1 FILEVIEWSHIFT <<)

const FILEVIEWOFFSETMASK (FILEVIEWGRANULARITY 1 -)
const FILEVIEWNUMBERMASK (FILEVIEWOFFSETMASK ~)

const VCBCBTYPE_NORMAL    1 // allocated from nonpaged pool, mapped into VIEWSPACE
const VCBCBTYPE_PERMANENT 2 // pre-allocated as part of a cacheblock
const VCBCBTYPE_LARGE     3 // allocated from nonpaged pool, mapped into POOLSPACE

struct VcBuffer
	4 FileControlBlock

	4 ReclaimNext
	4 ReclaimPrev

	4 WindowAddress
	4 Length

	4 Parent
	4 LeftChild
	4 RightChild
	4 FileOffset // splay tree value

	4 Type

	2 MapCountI // when nonzero, this BCB cannot be reclaimed
	2 PinCountI // when nonzero, the pages described by this BCB have a biased refcount
endstruct

extern VcWindowAllocate { -- bcb vaddr }
extern VcWindowFree { vaddr -- }

extern VcCacheInfoBlockTruncate { newsize cacheblock -- }

extern VcBufferIncrementMapCount { bcb -- oldcount }
extern VcBufferDecrementMapCount { bcb -- oldcount }

extern VcBufferDirty { bcb -- }

extern VcBufferLargeMap { offset length fileobject -- vaddr bcb ok }

extern VcBufferGet { offset fcb -- bcb ok }

extern VcFileMap { offset length fileobject -- vaddr bcb ok }
extern VcFileControlBlockMap { offset fcb -- vaddr bcb ok }

extern VcFileWrite { flags length offset buf fcb -- byteswritten ok }
extern VcFileRead { flags length offset buf fcb -- bytesread ok }

extern VcBufferReclaim { -- bcb vaddr }
extern VcBufferFree { bcb -- }

externptr VcBufferReclaimListHead
externptr VcBufferReclaimListTail