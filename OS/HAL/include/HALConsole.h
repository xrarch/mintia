const HCFMAGIC 0x664E4C45

struct HCFHeader
	4 Magic
	4 Width
	4 Height
	20 Reserved
endstruct

extern HALPutc { c -- }

const CONSOLEBG 5 // purple

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