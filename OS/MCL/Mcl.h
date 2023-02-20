const SYMBOLHASHTABLESIZE 97

struct MclpSymbolTable
	4 Count
	4 ListHead

	4 UpperScope

	(SYMBOLHASHTABLESIZE 4 *) BucketHeads
endstruct

struct MclpMachine
	OSFastMutex_SIZEOF Mutex

	MclpSymbolTable_SIZEOF RootSymbolTable

	4 HistoryCount
	4 HistoryListHead
	4 HistoryListTail
endstruct

const SYMTYPE_FUNCTION 1
const SYMTYPE_VARIABLE 2

struct MclpSymbol
	4 SymbolTable

	4 BucketNext
	4 BucketPrev
	4 BucketIndex

	4 Type
	4 Value

	0 Name
endstruct

const LEXBUFFERSIZE 1024
const TOKBUFFERSIZE 512

struct MclpParseContext
	4 LexFlags
	4 LexBuffer
	4 LexLastOffset
	4 LexOffset
	4 LexValidLength
	4 LexInputLength
	4 LexLineNumber

	4 Depth

	4 FileName
	4 StreamHandle

	4 ParseFlags

	4 Machine

	TOKBUFFERSIZE TokBuffer
endstruct

const LEX_INTERACTIVE  1
const LEX_NEWSTATEMENT 2

const LEXTOK_NEWLINE 1
const LEXTOK_LITERAL 2
const LEXTOK_EMPTY   4

extern MclpLexInit { -- }

extern MclpMachineLock { machine -- }
extern MclpMachineUnlock { machine -- }

extern MclpParseFile { filename interactive streamhandle machine -- rootblock ok }

extern MclpSymbolTableInitialize { upperscope symboltable -- }

extern MclpInteractiveReadLine { buf max ctx -- count ok }
extern MclpLexNextToken { peek tokbuf ctx -- tokflag toklen ok }
extern MclpLexNextNonemptyToken { stopnl tokbuf ctx -- tokflag toklen ok }
extern MclpLexLastToken { ctx -- }

extern MclpParseNodeCreate { type size ctx -- node ok }

extern MclpParseSubtreeFree { node -- }

extern MclpParseDiagnostic { ... fmt node ctx -- }

const PARSENODE_BLOCK      1
const PARSENODE_LITERAL    2
const PARSENODE_PIPELINE   3
const PARSENODE_COMMAND    4
const PARSENODE_VARREF     5
const PARSENODE_FUNCCALL   6
const PARSENODE_IF         7
const PARSENODE_COND       8
const PARSENODE_WHILE      9
const PARSENODE_FUNCDEF    10
const PARSENODE_VARSET     11

struct MclpParseNode
	4 Type
	4 Next
	4 LineNumber
	4 FileName
endstruct

struct MclpParseNodeBlock
	MclpParseNode_SIZEOF Header

	4 NodeListHead
	4 NodeListTail
endstruct

struct MclpParseNodeLiteral
	MclpParseNode_SIZEOF Header

	0 Word
endstruct

const PIPELINEFLAG_OUTAPPEND 1
const PIPELINEFLAG_ERRAPPEND 2

struct MclpParseNodePipeline
	MclpParseNode_SIZEOF Header

	4 Count

	4 CmdListHead
	4 CmdListTail

	4 StdInRedirectionPath
	4 StdOutRedirectionPath
	4 StdErrRedirectionPath

	4 Flags
endstruct

struct MclpParseNodeCommand
	MclpParseNode_SIZEOF Header

	4 ArgCount

	4 ArgListHead
	4 ArgListTail

	4 Name
endstruct

struct MclpParseNodeVarRef
	MclpParseNode_SIZEOF Header

	4 Name
endstruct

struct MclpParseNodeFunctionCall
	MclpParseNode_SIZEOF Header

	4 ArgCount

	4 ArgListHead
	4 ArgListTail

	4 Name
endstruct

struct MclpParseNodeIf
	MclpParseNode_SIZEOF Header

	4 CondListHead
	4 CondListTail

	4 ElseBody
endstruct

struct MclpParseNodeConditionalBlock
	MclpParseNode_SIZEOF Header

	4 Conditional
	4 Body
endstruct

struct MclpParseNodeFuncDef
	MclpParseNode_SIZEOF Header

	4 Body
	4 ArgCount
	
	4 ArgNameListHead
	4 ArgNameListTail

	4 Name
endstruct

struct MclpParseNodeVarSet
	MclpParseNode_SIZEOF Header

	4 NewValue
	4 Name
endstruct