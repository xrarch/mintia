struct IPCPort
	4 MessageListHead
	4 MessageListTail

	4 OwningProcess
	4 ClientTableHeader
	4 ServerPort

	4 ClientID
endstruct

extern IPCInitPhase1 { -- }

extern IPCPortObjectDelete { object -- }

extern IPCPortCreateObject { serverport owningprocess permissions name -- portobject ok }

externptr IPCPortObjectType