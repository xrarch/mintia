const OBNAMEMAX 64

struct OSObjectQuery
	OBNAMEMAX TypeName
	OBNAMEMAX Name

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

extern OSOpen { flags access path -- handle ok }
extern OSPageFileCreate { minpages maxpages pri path -- ok }

const OSHANDLEBITS 2

const OSHANDLEBIT_KERNELHANDLE 1

const OSEVENT_SYNCH 1
const OSEVENT_NOTIF 2

const OSWAITALL 1
const OSWAITANY 2