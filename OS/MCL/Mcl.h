const SYMBOLHASHTABLESIZE 97

struct MclpSymbolTable
	4 Count
	4 ListHead

	(SYMBOLHASHTABLESIZE 4 *) BucketHeads
endstruct

struct MclpMachine
	OSFastMutex_SIZEOF Mutex

	MclpSymbolTable_SIZEOF SymbolTable

	4 HistoryCount
	4 HistoryListHead
	4 HistoryListTail
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

const LEXBUFFERSIZE 1024
const TOKBUFFERSIZE 512

struct MclpParseContext
	4 LexFlags
	4 LexBuffer
	4 LexOffset
	4 LexValidLength
	4 LexInputLength
	4 LexLineNumber

	4 FileName
	4 StreamHandle

	4 ParseFlags

	4 Machine
endstruct

const LEX_INTERACTIVE  1
const LEX_NEWSTATEMENT 2

extern MclpLexInit { -- }

extern MclpMachineLock { machine -- }
extern MclpMachineUnlock { machine -- }

extern MclpParseFile { filename interactive streamhandle machine -- rootblock ok }

extern MclpSymbolTableInitialize { symboltable -- }

extern MclpInteractiveReadLine { buf max ctx -- count ok }
extern MclpLexNextToken { peek tokbuf ctx -- toklen ok }

extern MclpParseNodeCreate { type size -- node ok }

extern MclpParseSubtreeFree { node -- }

extern MclpParseDiagnostic { ... fmt ctx -- }

const PARSENODE_BLOCK 1

struct MclpParseNode
	4 Type
	4 Next
endstruct

struct MclpParseNodeBlock
	MclpParseNode_SIZEOF Header

	4 NodeListHead
	4 NodeListTail
endstruct