struct IPCPort
	4 MessageListHead
	4 MessageListTail

	4 ReceiverListHead
	4 ReceiverListTail

	4 OwningProcess
	4 ClientTableHeader
	4 ServerPort

	4 ClientID

	4 ServerContextForClient

	4 Flags
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