struct IPCPort
	4 MessageListHead
	4 MessageListTail

	4 SentListHead
	4 SentListTail

	4 WaiterListHead
	4 WaiterListTail

	4 MaximumMessageBody

	4 OwningProcess
	4 ClientTableHeader
	4 ServerPort

	4 ClientID

	4 ServerContextForClient

	4 NextConversationID

	4 Flags

	4 ZoneExtensionCharge
	MmZoneHeader_SIZEOF ZoneHeader
endstruct

struct IPCThreadBlock
	4 WaiterNext
	4 WaiterPrev
	4 WaitingConversationID

	4 RXMessage

	KeEvent_SIZEOF Event
endstruct

struct IPCKernelMessage
// kernel metadata part

	4 PortNext
	4 PortPrev

	4 QueueNext
	4 QueuePrev

	4 OriginatingPort
	4 RundownPointer
	4 Object

// user-visible part

	OSMessageHeader_SIZEOF Header
//	0 Body
endstruct

const IPCBOOST 1

const IPCINITIALMESSAGES_CLIENT 4
const IPCINITIALMESSAGES_SERVER 16

const IPCMESSAGEEXTENSION 8

const IPCPORTFLAG_CLIENT                1
const IPCPORTFLAG_UNFINISHED_CONNECTION 2

extern IPCInitPhase1 { -- }

extern IPCPortObjectDelete { object -- }
extern IPCPortObjectOpen { access object process -- ok }

extern IPCPortCreateObject { maxlen serverport owningprocess permissions name -- portobject ok }

extern IPCMessageAllocate { umsg mode conid portobject -- msg ok }
extern IPCMessageFree { msg -- }

extern IPCMessageEnqueueRundown { msg -- }
extern IPCMessageEnqueue { msg portobject -- }

extern IPCMessageDequeueRundown { msg -- }
extern IPCMessageDequeue { msg portobject -- }

externptr IPCPortObjectType

extern IPCGlobalLock { -- ok }
extern IPCGlobalUnlock { -- }