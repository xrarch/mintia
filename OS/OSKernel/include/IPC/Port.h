extern IPCInitPhase1 { -- }

externptr IPCPortObjectType

extern IPCPortCreateObject { flags maxlen serverport owningprocess permissions name -- portobject ok }
extern IPCPortCreate { flags maxlen permissions name -- porthandle ok }

extern IPCPortAccept { mode context txmsg reject porthandle -- ok }
extern IPCPortConnect { mode rxmsg txmsg timeout path -- porthandle ok }

extern IPCPortSendAndWaitReceive { mode rxmsg txmsg timeout porthandle -- ok }
extern IPCPortSendAndWaitReply { mode rxmsg txmsg timeout porthandle -- ok }

extern IPCPortOpenProcessByClientID { access clientid porthandle -- processhandle ok }

extern IPCPortAllocateCompletionMessage { context portobject -- msg ok }
extern IPCPortSendCompletionMessage { bytes status msg -- }
extern IPCCompletionMessageFree { msg -- }

extern IPCThreadBlockFree { thread -- }