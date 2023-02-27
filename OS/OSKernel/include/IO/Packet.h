fnptr IOPacketCompletionDPCRoutine { iopl -- }

const IOPTYPE_NORMAL        1
const IOPTYPE_USERASYNC     2
const IOPTYPE_PAGING        4

const IOPFLAG_ZONEIOP 1  // the IOP was drawn from one of the pre-allocated zones.
const IOPFLAG_FREEIOP 2  // the IOP should be freed upon completion.
const IOPFLAG_FREEMDL 4  // the MDL in the zeroth IOPL should be freed upon completion.
const IOPFLAG_QUOTA   8  // quota has been charged for this IOP.
const IOPFLAG_USERIO  16 // the IOP represents a usermode request (either sync or async).

// N.B. Changing the offsets of the fields within the following structs will
// break practically every driver. Changing the overall size of the structs,
// however, is designed to be fine.

struct IOPacketHeader // IOPH
	// indicates the current stack location in the iterative enqueuing
	// process. undefined after enqueue time.

	1 CurrentStackIndexB

	// indicates the number of stack locations in the packet.

	1 StackDepthB

	// saved priority boost.

	1 PriorityBoostB

	// packet type:
	//  - NORMAL: synchronous user IO, page-in IO, associated (fragment) IO, etc.
	//  - USERASYNC: asynchronous user IO (needs special completion)
	//  - PAGING: asynchronous page-out IO (needs special completion)

	1 TypeB

	// holds some flags pertaining to things like whether this IOP is
	// zone-allocated or pool-allocated, and whether the MDL specified in the
	// zeroth IOPL should be freed upon completion.

	1 FlagsB

	// indicates the header size; i.e. the offset to get from the IOP base to
	// the first IOPL.

	1 HeaderSizeB

	// alignment

	1 Reserved1B
	1 Reserved2B

	// saved status.

	4 Status

	// if quota is charged for this packet, it is charged to this quotablock.

	4 QuotaBlock

	// if this is an associated (fragment) packet, these contain the links
	// to our siblings in this fragment packet tree, and to our parent stack
	// location.

	4 ParentIOPL
	4 AssociatedPacketListPrev
	4 AssociatedPacketListNext

	// pointer to a referenced event object if user async I/O.
	// otherwise, just a KeEvent. in either case, signal upon completion if
	// non-null.

	4 Event

	// kernel-reserved IO flags.

	4 KFlags

	// links for generic device-specific queue of pending IOPs.
	// this is in the IOPH instead of the IOPL because it is anticipated that
	// only bottom-level IOPLs will be enqueued by a driver, and the IOP
	// therefore requires only one set of links.

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

	4 StatusBlock

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

	// number of associated packets that this one depends on for completion.
	// biased by one if there is a stack location below this packet; however,
	// that stack location is not linked into the associated packet list,
	// since only IOPH are linked into it.
	//
	// it is also biased by one just because this IOPL exists, since
	// completion occurs when IOCount drops to zero and otherwise that count
	// is simply decremented.

	2 IOCountI

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

	// points to an MDL that describes the buffer this operation is
	// transferring to/from. if this is the zeroth stack location and the flag
	// IOPFLAG_FREEMDL is specified in the IOP header, the MDL will be
	// unmapped, unpinned, and freed when this IOPL completes.

	4 MDL

	// pointer to the IOPH for this IOP.

	4 IOPH

	// linked list anchors for associated (fragment) IOPs of this IOPL.

	4 AssociatedPacketListHead
	4 AssociatedPacketListTail
endstruct