const OSFILETYPE_FILE        1
const OSFILETYPE_DIRECTORY   2
const OSFILETYPE_CHARDEVICE  3
const OSFILETYPE_BLOCKDEVICE 4

const OSFILEFLAG_NOCACHE     1
const OSFILEFLAG_NOREADAHEAD 2

const OSACCESSFLAG_NONBLOCK  1

const OSSEEK_SET             1
const OSSEEK_CUR             2
const OSSEEK_END             3

const OSMOUNT_READONLY       1
const OSMOUNT_NOUID          2

struct OSDirectoryEntry
	256 Name
	32  Reserved
endstruct

externptr OSStdIn
externptr OSStdOut
externptr OSStdErr