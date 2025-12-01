struct OSMessageHeader
	1 TypeB
	1 SubtypeB
	2 LengthI
	4 ConversationID
	4 ClientID
	4 Context
	4 Handle
	4 Access
endstruct

struct OSMessageHeaderIOCompletion
	1 TypeB
	1 SubtypeB
	2 LengthI
	4 ConversationID
	4 BytesTransferred
	4 Context
	4 Status
	4 Reserved
endstruct

extern OSPortConnect { rxmsg txmsg timeout path -- porthandle ok }

const OSPORT_FLAG_NO_HANDLES    1 // forbid handle passing

const OSPORT_CID_SYSTEM -1

const OSPORT_MESSAGE_CONNECTION 1
const OSPORT_MESSAGE_REQUEST    2
const OSPORT_MESSAGE_REPLY      3
const OSPORT_MESSAGE_DISCONNECT 4
const OSPORT_MESSAGE_IOCOMPLETE 5

const OSPORT_CONID_FIRSTDYNAMIC 32
const OSPORT_CONID_FIRSTUSER    8
const OSPORT_CONID_NONE         0
const OSPORT_CONID_ANY          0
const OSPORT_CONID_ALL          0
const OSPORT_CONID_NEW          0
const OSPORT_CONID_CONNECTION   1
const OSPORT_CONID_DISCONNECT   2
const OSPORT_CONID_IOCOMPLETE   3