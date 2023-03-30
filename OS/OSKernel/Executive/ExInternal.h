extern ExiEventInit { -- }
extern ExiSemaphoreInit { -- }
extern ExiMutexInit { -- }
extern ExiTimerInit { -- }


// handle table stuff


const EXTENDBYENTRIES 32

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


// rwlock stuff


const EXBOOSTRWSTARVE        6
const EXBOOSTEXCLUSIVEWAITER 2
const EXBOOSTSHAREDWAITER    1

const EXBOOSTTIMEOUT 300


// nvram stuff


extern ExiNvramLock { -- }
extern ExiNvramUnlock { -- }