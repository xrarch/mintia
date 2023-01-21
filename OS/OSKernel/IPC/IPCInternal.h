extern IPCiGlobalLock { alertable -- ipl ok }
extern IPCiGlobalUnlock { ipl -- }

extern IPCiMessageEnqueueRundown { msg -- }
extern IPCiMessageDequeueRundown { msg -- }

extern IPCiMessageDequeue { msg -- }

extern IPCiMessageAllocate { allowhandle umsg mode conid portobject -- clientid msg ok }
extern IPCiMessageFree { msg -- }

extern IPCiPortSendMessage { msg portobject -- ok }
extern IPCiPortReceiveMessage { ipl umsg mode clientid conid timeout portobject -- ok }

extern IPCiThreadBlockCreate { -- ok }

extern IPCiPortObjectDelete { object -- }
extern IPCiPortObjectOpen { access object process -- ok }

struct IPCiPort
	4 MessageListHead
	4 MessageListTail

	4 SentListHead
	4 SentListTail

	4 WaiterListHead
	4 WaiterListTail

	4 MaximumMessageBody

	4 MaximumQueueLength
	4 QueueLength

	4 OwningProcess
	4 ClientTableHeader
	4 ServerPort

	4 ClientID

	4 ServerContextForClient

	4 NextConversationID

	4 DisconnectionMessage

	4 Flags
	4 UFlags

	4 ZoneExtensionCharge
	MmZoneHeader_SIZEOF ZoneHeader
endstruct

struct IPCiThreadBlock
	4 WaiterNext
	4 WaiterPrev
	4 WaitingConversationID
	4 WaitingClientID

	4 RXMessage

	KeEvent_SIZEOF Event
endstruct

struct IPCiKernelMessage
// kernel metadata part

	4 PortNext
	4 PortPrev

	4 QueueNext
	4 QueuePrev

	4 OriginatingPort
	4 RundownPointer
	4 Object
	4 EnqueuedTo

// user-visible part

	OSMessageHeader_SIZEOF Header
//	0 Body
endstruct

const IPCBOOST 1

const IPCINITIALMESSAGES_CLIENT 2
const IPCINITIALMESSAGES_SERVER 4

const IPCMESSAGEEXTENSION 4

const IPCPORTFLAG_CLIENT                1
const IPCPORTFLAG_UNFINISHED_CONNECTION 2