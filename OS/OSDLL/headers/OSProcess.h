const OSPROCESS_FORKQUOTA     2
const OSPROCESS_DETACHCONSOLE 4
// userside
const OSPROCESS_NOINHERITENV  8192
const OSPROCESS_SUSPENDED     16384
const OSPROCESS_NOINHERITH    32768

const OSTHREAD_SUSPENDED 1

extern OSGetImageName { -- imagename }

extern OSCreationBlockInitialize { creationparams -- }

extern OSSpawnV { argcn argvt path creationflags creationparams permissions name -- threadhandle processhandle ok }
extern OSSpawn { ... path creationflags creationparams permissions name -- threadhandle processhandle ok }

extern OSSpawnByNameV { argcn argvt progname creationflags creationparams permissions name -- threadhandle processhandle ok }
extern OSSpawnByName { ... progname creationflags creationparams permissions name -- threadhandle processhandle ok }

extern OSExit { status -- }

struct OSProcessInformation
	4 PID
	4 ParentPID
	OBNAMEMAX Name
	OBNAMEMAX ConsoleName
	4 OwningUID
	4 OwningGID
	4 Status
	4 Priority
	4 Terminated
	4 ExitStatus
	4 WorkingSetSize
	4 PageFaultCount

	4 UserTimeMs
	4 SystemTimeMs

	48 Reserved
endstruct

struct OSThreadInformation
	4 Status
	4 Terminated
	4 ExitStatus

	4 UserTimeMs
	4 SystemTimeMs
	
	48 Reserved
endstruct

extern OSThreadCurrentTEB { -- teb }
extern OSThreadCurrentTID { -- tid }

struct OSThreadEnvironmentBlock
	4 ThreadID

	4 StackTop
	4 StackBottom
	4 StackHasGuardPage
endstruct

struct OSCreationParams
	// handles to use as the process's stdio if OSPROCESS_NOINHERITH is
	// specified.
	4 StdIn
	4 StdOut
	4 StdErr

	48 Reserved
endstruct