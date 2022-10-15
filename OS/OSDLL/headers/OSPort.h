struct OSMessageHeader
	1 TypeB
	1 SubtypeB
	2 LengthI
	4 ConversationID
	4 ClientID
	4 Context
endstruct

const OSPORT_MESSAGE_CONNECTION 1


const OSPORT_CONID_FIRSTDYNAMIC 32
const OSPORT_CONID_FIRSTUSER    8
const OSPORT_CONID_NONE         0
const OSPORT_CONID_ANY          0
const OSPORT_CONID_ALL          0
const OSPORT_CONID_NEW          0
const OSPORT_CONID_CONNECTIONS  1