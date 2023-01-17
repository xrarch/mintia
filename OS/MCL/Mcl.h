const SYMBOLHASHTABLESIZE 97

struct MclpSymbolTable
	4 Count
	4 ListHead

	(SYMBOLHASHTABLESIZE 4 *) BucketHeads
endstruct

struct MclpMachine
	OSFastMutex_SIZEOF Mutex

	MclpSymbolTable_SIZEOF SymbolTable
endstruct

struct MclpValue
	4 Type
	4 RefCount

	4 Context
endstruct

struct MclpSymbol
	4 SymbolTable

	4 BucketNext
	4 BucketPrev
	4 BucketIndex

	4 GlobalNext
	4 GlobalPrev

	4 Value

	0 Name
endstruct

struct MclpTypeOperations
	4 Create
	4 Free
endstruct

struct MclpType
	4 Name

	MclpTypeOperations_SIZEOF Ops
endstruct

struct MclpParseContext
	4 LexFlags
	4 ParseFlags
	4 FileHandle
endstruct

const LEX_INTERACTIVE 1
const PARSE_ROOTBLOCK 1

extern MclpMachineLock { machine -- }
extern MclpMachineUnlock { machine -- }

extern MclpParseFile { filehandle machine -- ok }

extern MclpSymbolTableInitialize { symboltable -- }