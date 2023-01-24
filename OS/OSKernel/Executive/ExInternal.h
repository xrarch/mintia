extern ExiEventInit { -- }
extern ExiSemaphoreInit { -- }
extern ExiMutexInit { -- }
extern ExiTimerInit { -- }

const EXTENDBYENTRIES 16

struct ExiHandleTableHeader
	ExRwLock_SIZEOF RwLock
	4 EntrySizeLog
	4 QuotaBlock

	4 Context

	4 Entries
	4 FreeEntries

	4 FreeListHead

	4 Table
endstruct