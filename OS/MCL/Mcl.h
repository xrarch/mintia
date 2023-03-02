const SYMBOLHASHTABLESIZE 97

struct MclpSymbolTable
	4 Count
	4 ListHead

	4 UpperScope

	(SYMBOLHASHTABLESIZE 4 *) BucketHeads
endstruct

struct MclpMachine
	MclpSymbolTable_SIZEOF RootSymbolTable

	4 CurrentScope
	4 CurrentNode
	4 CaptureDepth

	4 Interactive
	4 Interrupted

	4 HistoryCount
	4 HistoryListHead
	4 HistoryListTail
endstruct

const SYMTYPE_FUNCTION 1
const SYMTYPE_BUILTIN  2
const SYMTYPE_VALUE    3

struct MclpSymbol
	4 SymbolTable

	4 GlobalNext
	4 GlobalPrev

	4 BucketNext
	4 BucketPrev
	4 BucketIndex

	4 Type
	4 Value

	0 Name
endstruct

const VALTYPE_INLINE 1
const VALTYPE_EXLINE 2

struct MclpValue
	4 RefCount

	4 Type

	4 Length

	4 Contents

	4 HeapCookie
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
const LEX_NEWLINE      4

const LEXTOK_NEWLINE 1
const LEXTOK_LITERAL 2
const LEXTOK_EMPTY   4

extern MclpLexInit { -- }

extern MclpRegisterPrimitiveBuiltins { machine -- ok }

extern MclpParseFile { filename interactive streamhandle machine -- rootblock ok }

extern MclpSymbolTableInitialize { upperscope symboltable -- }

extern MclpSymbolTableUninitialize { symboltable -- }

extern MclpSymbolNameHash { name -- hash }

extern MclpSymbolLookupFullScope { name symboltable -- symbol ok }
extern MclpSymbolLookup { name symboltable -- symbol ok }
extern MclpSymbolSet { value type name symboltable -- symbol ok }
extern MclpSymbolCreate { value type name symboltable -- symbol ok }
extern MclpSymbolFree { symbol -- }

extern MclpRegisterBuiltin { func name machine -- ok }

extern MclpInteractiveReadLine { buf max stream machine -- count ok }
extern MclpLexNextToken { peek tokbuf ctx -- tokflag toklen ok }
extern MclpLexNextNonemptyToken { stopnl tokbuf ctx -- tokflag toklen ok }
extern MclpLexLastToken { ctx -- }

extern MclpParseNodeCreate { type size ctx -- node ok }
extern MclpParseNodeRef { node -- }

extern MclpParseSubtreeFree { node -- }

extern MclpParseDiagnostic { ... fmt node ctx -- }

extern MclpEvaluateNode { capture node machine -- value ok }

extern MclpEvaluatePipeline { node machine -- value ok }

extern MclpEvaluateValueTruthiness { value -- tru }

extern MclpSpawnCommand { stdin stdout stderr builtin node machine -- processhandle ok }

extern MclpValueNewX { heapcookie len contents type -- value ok }
extern MclpValueNew { len contents type -- value ok }
extern MclpRefValue { value -- }
extern MclpFreeValue { value -- }

extern MclpValueContents { value -- contents }

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
const PARSENODE_RETURN     12
const PARSENODE_CONTINUE   13
const PARSENODE_BREAK      14

struct MclpParseNode
	4 Type
	4 Next
	4 LineNumber
	4 FileName
	4 RefCount
endstruct

struct MclpParseNodeBlock
	MclpParseNode_SIZEOF Header

	4 IsRootBlock

	4 NodeListHead
	4 NodeListTail
endstruct

struct MclpParseNodeLiteral
	MclpParseNode_SIZEOF Header

	4 Value
endstruct

const PIPELINEFLAG_OUTAPPEND 1
const PIPELINEFLAG_ERRAPPEND 2
const PIPELINEFLAG_ASYNC     4
const PIPELINEFLAG_NEWLINE   8

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