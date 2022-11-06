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

	4 DisconnectionMessage

	4 Flags
	4 UFlags

	4 ZoneExtensionCharge
	MmZoneHeader_SIZEOF ZoneHeader
endstruct

struct IPCThreadBlock
	4 WaiterNext
	4 WaiterPrev
	4 WaitingConversationID
	4 WaitingClientID

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
	4 EnqueuedTo

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

extern IPCPortCreateObject { flags maxlen serverport owningprocess permissions name -- portobject ok }
extern IPCPortCreate { flags maxlen permissions name -- porthandle ok }

extern IPCPortAccept { mode context txmsg reject porthandle -- ok }
extern IPCPortConnect { mode rxmsg txmsg timeout path -- porthandle ok }

extern IPCMessageAllocate { allowhandle umsg mode conid portobject -- clientid msg ok }
extern IPCMessageFree { msg -- }

extern IPCMessageEnqueueRundown { msg -- }
extern IPCMessageDequeueRundown { msg -- }

extern IPCMessageEnqueue { msg portobject -- }
extern IPCMessageDequeue { msg -- }

extern IPCPortSendMessage { msg portobject -- }
extern IPCPortReceiveMessage { umsg mode clientid conid timeout portobject -- ok }

extern IPCPortSendAndWaitReceive { mode rxmsg txmsg timeout porthandle -- ok }
extern IPCPortSendAndWaitReply { mode rxmsg txmsg timeout porthandle -- ok }

extern IPCPortOpenProcessByClientID { access clientid porthandle -- processhandle ok }

extern IPCThreadBlockCreate { -- ok }

externptr IPCPortObjectType

extern IPCGlobalLock { -- ok }
extern IPCGlobalUnlock { -- }