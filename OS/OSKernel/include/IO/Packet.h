fnptr IOPacketCompletionDPCRoutine { iopl -- }

const IOPTYPE_NORMAL        1
const IOPTYPE_USERASYNC     2
const IOPTYPE_PAGING        4
const IOPTYPE_ZONEALLOCATED 8192

struct IOPacketHeader // IOPH
	// indicates the current stack location in the iterative enqueuing
	// process. undefined after enqueue time.

	1 CurrentStackIndexB

	// indicates the number of stack locations in the packet.

	1 StackDepthB

	// indicates whether this is user or kernel IO.

	1 ModeB

	// saved priority boost.

	1 PriorityBoostB

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

	// packet type:
	//  - NORMAL: synchronous user IO, page-in IO, associated (fragment) IO, etc.
	//  - USERASYNC: asynchronous user IO (needs special completion)
	//  - PAGING: asynchronous page-out IO (needs special completion)

	4 Type
endstruct

struct IOPacketHeaderPagingIO
	IOPacketHeader_SIZEOF Header

	// things required for page-out IO completion.
	// an APC is required to unreference the pages that were cleaned.

	KeAPC_SIZEOF CompletionAPC
endstruct

struct IOPacketHeaderUserIO
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
	// since only packet headers are linked into it.
	//
	// it is also biased by one just because the IOPL exists, since completion
	// occurs when IOCount drops to zero and otherwise it is simply
	// decremented.

	2 IOCountI

	// driver context for this IOPL.

	4 Context

	// file control block that this IOPL is targeted towards.

	4 FileControlBlock

	// routine to run in the context of the completion DPC when this IOPL is
	// completed.

	4 CompletionDPCRoutine

	// offset and length of the IO transfer.

	4 Offset
	4 Length

	// offset from the virtual base of the provided MDL at which the transfer
	// should be done.

	4 OffsetInMDL
	4 MDL

	// pointer to the header for this IOP.

	4 Header

	// linked list anchor for associated (fragment) IOPs of this IOPL.

	4 AssociatedPacketListHead
	4 AssociatedPacketListTail
endstruct