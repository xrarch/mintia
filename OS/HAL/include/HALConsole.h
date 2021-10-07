extern HALPutc { c -- }
extern HALGetc { -- c }
extern HALConsoleQuery { -- w h x y }
extern HALConsoleSetCursor { x y -- }
extern HALConsoleClear { -- }
extern HALConsoleSetMode { newmode -- oldmode }

const CONSOLEFG 0 // white
const CONSOLEBG 6 // blue

const CONSOLEMODEOFF 0
const CONSOLEMODETTY 1
const CONSOLEMODESCREEN 2

externptr HALConsoleMode
externptr HALConsoleFont
externptr HALConsoleFontWidth
externptr HALConsoleFontHeight
externptr HALConsoleWidthChars
externptr HALConsoleHeightChars
externptr HALConsoleWidthPix
externptr HALConsoleHeightPix
externptr HALConsoleFontFlags

// definitions for the HAL Console Font (HCF) format

const HCFMAGIC 'fNLE'

const HCFFLAG_REVERSE 1

struct HCFHeader
	4 Magic
	4 Width
	4 Height
	4 Flags
	16 Reserved
endstruct