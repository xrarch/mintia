const OSFILETYPE_FILE        1
const OSFILETYPE_DIRECTORY   2
const OSFILETYPE_CHARDEVICE  3
const OSFILETYPE_BLOCKDEVICE 4

const OSFILEFLAG_NOCACHE     1
const OSFILEFLAG_CREATE      2
const OSFILEFLAG_MUSTBEFILE  4
const OSFILEFLAG_CREATEDIR   8
const OSFILEFLAG_MUSTCREATE  16
const OSFILEFLAG_EXCLUSIVE   32
const OSFILEFLAG_PAGEFILE    64
const OSFILEFLAG_APPENDONLY  128 // atomic append

// set of flags that are reserved for system usage
const OSFILEFLAG_KERNELSET   OSFILEFLAG_PAGEFILE

// only block if theres nothing available, otherwise return whatever is there
const OSACCESSFLAG_RETURNANY   1

// avoid readahead in the IO layer
const OSACCESSFLAG_NOREADAHEAD 2

// return immediately. post IO completion message to port object
const OSACCESSFLAG_ASYNC       4

// set of flags that are reserved for system usage
const OSACCESSFLAG_KERNELSET   OSACCESSFLAG_ASYNC

const OSSEEK_SET 1
const OSSEEK_CUR 2
const OSSEEK_END 3

const OSDEFAULTFILEPERMISSIONS 438
const OSDEFAULTDIRPERMISSIONS  511

const OSFILEPATHMAX 256

struct OSDirectoryEntry
	288 Name
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

	4 CreationTimeSecPart
	4 CreationTimeMsPart

	40 Reserved
endstruct

struct OSStatusBlock
	4 Status
	4 Length
endstruct

struct OSRequest
	4 PortHandle
	4 EventHandle
	4 StatusBlock
	4 Context
	4 CompletionRoutine
	4 Reserved
endstruct

externptr OSStdIn
externptr OSStdOut
externptr OSStdErr

extern OSRequestInitialize { requestblock -- }

extern OSFileInformationInitialize { info -- }

extern OSSetUMask { umask -- }
extern OSGetUMask { -- umask }

extern OSFileOpen { flags access path ftype -- handle ok }

extern OSDirectoryCreate { permissions flags access path -- handle ok }
extern OSFileCreate { permissions flags access path -- handle ok }