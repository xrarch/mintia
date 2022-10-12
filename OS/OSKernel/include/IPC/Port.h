struct IPCPort
	4 MessageListHead
	4 MessageListTail

	4 WaiterListHead
	4 WaiterListTail

	4 OwningProcess
	4 ClientTableHeader
	4 ServerPort

	4 ClientID

	4 ServerContextForClient

	4 NextConversationID

	4 Flags
endstruct

struct IPCThreadBlock
	4 WaiterNext
	4 WaiterPrev
	4 WaitingConversationID

	4 RXMessage

	KeEvent_SIZEOF Event
endstruct

struct IPCKernelMessage
	4 Next
	4 Prev
	OSMessageHeader_SIZEOF Header
//	0 Body
endstruct

const IPCPORTFLAG_CLIENT            1
const IPCPORTFLAG_FAILED_CONNECTION 2

extern IPCInitPhase1 { -- }

extern IPCPortObjectDelete { object -- }
extern IPCPortObjectOpen { access object process -- ok }

extern IPCPortCreateObject { serverport owningprocess permissions name -- portobject ok }

externptr IPCPortObjectType

extern IPCGlobalLock { -- ok }
extern IPCGlobalUnlock { -- }