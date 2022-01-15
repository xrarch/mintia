const OSFILETYPE_FILE        1
const OSFILETYPE_DIRECTORY   2
const OSFILETYPE_CHARDEVICE  3
const OSFILETYPE_BLOCKDEVICE 4

const OSFILEFLAG_NOCACHE     1
const OSFILEFLAG_CREATE      2
const OSFILEFLAG_MUSTBEFILE  4
const OSFILEFLAG_CREATEDIR   8

const OSFILEPATHMAX        256

const OSACCESSFLAG_NONBLOCK    1
const OSACCESSFLAG_NOREADAHEAD 2

const OSSEEK_SET             1
const OSSEEK_CUR             2
const OSSEEK_END             3

const OSMOUNT_READONLY       1
const OSMOUNT_NOUID          2

struct OSDirectoryEntry
	256 Name
	32  Reserved
endstruct

struct OSFileInformation
	4 Size
	4 Type
	4 ATimeSecPart
	4 ATimeMsPart
	4 MTimeSecPart
	4 MTimeMsPart
	4 CTimeSecPart
	4 CTimeMsPart
	48 Reserved
endstruct

externptr OSStdIn
externptr OSStdOut
externptr OSStdErr

extern OSFileOpen { flags access path ftype -- handle ok }