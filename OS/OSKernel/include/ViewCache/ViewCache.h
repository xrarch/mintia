extern VcInitPhase1 { -- }

const FILEVIEWSHIFT 15
const FILEVIEWGRANULARITY (1 FILEVIEWSHIFT <<)

struct VcBuffer
	4 FileControlBlock

	4 MapCount
	4 PinCount

	4 ReclaimNext
	4 ReclaimPrev

	4 WindowAddress
	4 Length

	4 Parent
	4 LeftChild
	4 RightChild
	4 Value // file offset
endstruct