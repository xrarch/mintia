fnptr IOPacketCompletionDPCRoutine { iopl -- ok }

const IOPTYPE_NORMAL        1
const IOPTYPE_PAGING        2
const IOPTYPE_USERASYNC     3

const IOPFLAG_ZONEIOP  1  // the IOP was drawn from one of the pre-allocated zones.
const IOPFLAG_FREEIOP  2  // the IOP should be freed upon completion.
const IOPFLAG_FREEMDL  4  // the MDL in the zeroth IOPL should be freed upon completion.
const IOPFLAG_QUOTA    8  // quota has been charged for this IOP.
const IOPFLAG_USERMODE 16 // the IOP represents a usermode request (either sync or async).
const IOPFLAG_COMPLETE 32 // the IOP has been completed
const IOPFLAG_DOCOMPLT 64 // determines whether the full scope of completion processing will occur

// N.B. Changing the offsets of the fields within the following structs will
// break practically every driver. Changing the overall size of the structs,
// however, is designed to be fine.

struct IOPacketHeader // IOPH
	// indicates the current stack location in the iterative enqueuing
	// process. after enqueue time, it will be the final stack location.

	1 CurrentStackIndexB

	// indicates the number of stack locations in the packet.

	1 StackDepthB

	// saved priority boost.

	1 PriorityBoostB

	// packet type:
	//  - NORMAL: synchronous user IO, page-in IO, associated (fragment) IO, etc.
	//  - PAGING: asynchronous page-out IO (needs special completion)
	//  - USERASYNC: asynchronous user IO (needs special completion)

	1 TypeB

	// holds some flags pertaining to things like whether this IOP is
	// zone-allocated or pool-allocated, and whether the MDL specified in the
	// zeroth IOPL should be freed upon completion.

	1 IOPFlagsB

	// indicates the header size; i.e. the offset to get from the IOP base to
	// the first IOPL.

	1 HeaderSizeB

	// number of associated packets that this one depends on for completion.
	// it is also biased by one just because this IOP exists, since completion
	// occurs when IOCount drops to zero and otherwise that count is simply
	// decremented.

	2 IOCountI

	// status block that will be copied out upon completion.

	8 StatusBlock

	// timeout (if any)

	4 Timeout

	// if quota is charged for this packet, it is charged to this quotablock.

	4 QuotaBlock

	// if this is an associated (fragment) packet, this contains the pointer
	// to our parent IOP.

	4 ParentIOP

	// pointer to a referenced event object if user async I/O.
	// otherwise, just a KeEvent. in either case, signal upon completion if
	// non-null.

	4 Event

	// kernel-reserved IO flags.

	4 KFlags

	// points to an MDL that describes the buffer this operation is
	// transferring to/from. if the flag IOPFLAG_FREEMDL is specified in the
	// IOP header, the MDL will be unmapped, unpinned, and freed when this IOP
	// completes.

	4 MDL

	// links for generic device-specific queue of pending IOPs.
	// this is in the IOPH instead of the IOPL because it is anticipated that
	// only bottom-level IOPLs will be enqueued by a driver, and the IOP
	// therefore requires only one set of links.
	//
	// doubles as the list links for the per-thread list of associated IOPs
	// whose enqueuing has been deferred.

	4 DeviceQueueNext
	4 DeviceQueuePrev
endstruct

struct IOPacketHeaderPagingIO
	IOPacketHeader_SIZEOF Header

	// things required for page-out IO completion.
	// an APC is required to unreference the pages that were cleaned.

	KeAPC_SIZEOF CompletionAPC
endstruct

struct IOPacketHeaderUserAsync
	IOPacketHeader_SIZEOF Header

	// things required for user async IO completion.
	// an APC is required to write out the IO status block and/or enqueue the
	// completion message.

	KeAPC_SIZEOF CompletionAPC

	// a file object pointer is required in order to unreference the target
	// file.

	4 FileObject

	// pointer to the userspace IO status block.

	4 UserStatusBlock

	// pointer to the pre-initialized completion message (if any).

	4 CompletionMessage

	// links for the per-thread list of pending IOPs.

	4 ThreadListNext
	4 ThreadListPrev
endstruct

struct IOPacketLocation // IOPL
	// indicates whether this is a read or a write.

	1 FunctionCodeB

	// indicates the index of this stack location in the packet.

	1 StackLocationB

	// alignment

	1 Alignment1B
	1 Alignment2B

	// IO flags.

	4 Flags

	// driver-specific context for this IOPL.

	4 Context

	// the file control block that this IOPL is targeted towards.

	4 FileControlBlock

	// optional routine to run in the context of the completion DPC when this
	// IOPL is completed.

	4 CallbackRoutine

	// offset and length of the IO transfer on the medium.

	4 Offset
	4 Length

	// offset from the virtual base of the provided MDL, at which the transfer
	// should be done.

	4 OffsetInMDL

	// pointer to the IOPH for this IOP.

	4 IOPH
endstruct

extern IOPacketFree { iop -- }
extern IOPacketAllocateForFile { mode type kflags fcb iopflags -- ioplzero iop ok }
extern IOPacketAllocate { mode type kflags stacksize iopflags -- ioplzero iop ok }
extern IOPacketInitialize { quotablock type kflags stacksize iopflags iop -- ioplzero }

extern IOPacketFinishEitherContext { iop -- }

extern IOPacketWasEnqueued { iop -- }

extern IOPacketIndex { index iop -- iopl }
extern IOPacketFromLocation { iopl -- iop }
extern IOPacketLocationNext { iopl -- nextiopl }

extern IOPacketLocationMappedBuffer { iopl -- vaddr }
extern IOPacketLocationVirtualBuffer { iopl -- vaddr }

extern IOPacketCurrentLocation { iop -- iopl }

extern IOPacketAllocateAssoc { kflags stacksize iopflags iop -- ioplzero associop ok }
extern IOPacketAllocateAssocStack { kflags iopflags iopl -- ioplzero associop ok }

extern IOPacketAssociate { associop iop -- }

extern IOPacketEnqueue { iop -- ok }

extern IOPacketCompleteLow { status priboost iop -- }
extern IOPacketComplete { status priboost iop -- }

const IODONE_NEXTLOCATION 0
const IODONE_NOLOCATIONS  1
const IODONE_SAMELOCATION 2