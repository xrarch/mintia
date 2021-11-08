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

extern OSLastComponent { path -- lcomp }
extern OSDirName { path dirname bufsize -- ok }
extern OSRealPath { path canon bufsize -- ok }

extern OSOpen { flags access path -- handle ok }