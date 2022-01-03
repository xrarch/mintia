externptr CmdInteractiveMode
externptr CmdTokenStreamHandle

externptr CmdTokenLineNumber

externptr CmdLastStatusCode

externptr CmdSymbolStdInHandle
externptr CmdSymbolStdOutHandle
externptr CmdSymbolStdErrHandle

const CMDSTREAM_OK  0
const CMDSTREAM_EOF 1

const CMDTOKENTYPE_NORMAL  1
const CMDTOKENTYPE_EOF     2
const CMDTOKENTYPE_TOOBIG  3
const CMDTOKENTYPE_EOL     4
const CMDTOKENTYPE_INVALID 5
const CMDTOKENTYPE_STRING  6

extern CmdIgnoreSignals { -- }
extern CmdResetSignals { -- }

extern CmdDoNextStatement { -- done ok }

extern CmdGetNextToken { tokenbuf bufsize issyntactic -- length tokentype ok }

struct CmdSymbol
	4 Name
	4 Contents

	4 Next
	4 Prev
endstruct

extern CmdSymbolGet { name -- contents ok }
extern CmdSymbolFind { name -- sym ok }
extern CmdSymbolSet { contents name -- sym ok }
extern CmdSymbolDeletePtr { sym -- }
extern CmdSymbolDelete { name -- ok }

extern CmdSymbolSetStdIOHandle { path access retptr -- ok }
extern CmdSymbolSetStdIO { -- oldstdin oldstdout oldstderr }
extern CmdSymbolGetStdIOHandles { -- stdin stdout stderr ok }

fnptr CmdBuiltinF { argvt argcn -- ret ok }

extern CmdBuiltinRun { argvt argcn -- ran ok }