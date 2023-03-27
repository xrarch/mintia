const OSCONSOLEMODE_NOECHO 1
const OSCONSOLEMODE_RAW    2

struct OSConsoleQuery
	4 Reserved1
	4 Reserved2
	4 Mode

	24 Reserved
endstruct

const OSDUPLEXFLAG_SIMPLEX 1
const OSDUPLEXFLAG_CONSOLE 2
const OSDUPLEXFLAG_PIPE    4

extern OSConsoleQuerySize { filehandle -- w h ok }