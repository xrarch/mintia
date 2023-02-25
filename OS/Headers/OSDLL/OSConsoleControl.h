const OSCONSOLEMODE_NOECHO 1
const OSCONSOLEMODE_RAW    2

const OSCONSOLEIOCONTROL_QUERY     1
const OSCONSOLEIOCONTROL_SETMODE   2
const OSCONSOLEIOCONTROL_RESETMODE 3
const OSCONSOLEIOCONTROL_EXPEDITE  4

struct OSConsoleQuery
	4 Reserved1
	4 Reserved2
	4 Mode

	24 Reserved
endstruct

const OSDUPLEXFLAG_SIMPLEX 1
const OSDUPLEXFLAG_CONSOLE 2

extern OSConsoleQuerySize { filehandle -- w h ok }