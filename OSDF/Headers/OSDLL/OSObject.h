const OBNAMEMAX 64

struct OSObjectQuery
	OBNAMEMAX TypeName
	OBNAMEMAX Name

	4 TypeIdentifier

	4 HandleCount
	4 PointerCount

	4 Permissions
	4 UID
	4 GID
endstruct

const OSNONE           -1
const OSCURRENTPROCESS -2
const OSCURRENTTHREAD  -3

extern OSGetStdIn { -- fd }
extern OSGetStdOut { -- fd }
extern OSGetStdErr { -- fd }

extern OSGetStdInStream { -- stream }
extern OSGetStdOutStream { -- stream }
extern OSGetStdErrStream { -- stream }

extern OSSetStdIn { fd -- }
extern OSSetStdOut { fd -- }
extern OSSetStdErr { fd -- }

extern OSFlushLine { -- }

extern OSReadline { s max -- eof }

extern OSLastComponent { path -- lcomp }
extern OSDirectoryName { path dirname bufsize -- ok }
extern OSRealPath { path canon bufsize -- ok }

extern OSCharacterIsAlphanumeric { char -- valid }
extern OSStringIsAlphanumeric { str -- valid }

extern OSGetCWD { cwd bufsize -- ok }
extern OSChangeCWD { path -- ok }

extern OSOpen { filetype objecttype flags access path -- handle ok }
extern OSPageFileCreate { minpages maxpages pri path -- ok }

const OSHANDLEBITS 2

const OSHANDLEBIT_KERNELHANDLE 1

const OSEVENT_SYNCH 1
const OSEVENT_NOTIF 2

const OSWAITALL 1
const OSWAITANY 2

const OSTYPE_ANY       0
const OSTYPE_TIMER     1
const OSTYPE_MUTEX     2
const OSTYPE_SEMAPHORE 3
const OSTYPE_EVENT     4
const OSTYPE_PORT      5
const OSTYPE_FILE      6
const OSTYPE_DEVICE    7
const OSTYPE_TYPE      8
const OSTYPE_DIRECTORY 9
const OSTYPE_JOB       10
const OSTYPE_THREAD    11
const OSTYPE_PROCESS   12
const OSTYPE_SECTION   13