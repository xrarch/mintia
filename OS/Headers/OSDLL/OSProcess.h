const OSPROCESS_NEWSESSION    1
const OSPROCESS_DETACHJOB     2
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

extern OSExecuteV { argcn argvt progname -- ok }
extern OSExecute { ... progname -- ok }

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
	4 DPCTimeMs

	48 Reserved
endstruct

struct OSThreadInformation
	4 Status
	4 Terminated
	4 ExitStatus

	4 UserTimeMs
	4 SystemTimeMs
	4 DPCTimeMs
	
	48 Reserved
endstruct

extern OSThreadCurrentTEB { -- teb }
extern OSThreadCurrentTID { -- tid }

struct OSThreadEnvironmentBlock
	4 ThreadID

	4 StackTop
	4 StackBottom
	4 StackHasGuardPage

	(32 4 *) SignalActions
endstruct

struct OSCreationParams
	// handles to use as the process's stdio if OSPROCESS_NOINHERITH is
	// specified.
	4 StdIn
	4 StdOut
	4 StdErr

	// UID to charge the process's quota to
	4 QuotaUID

	// base priority for the new process
	4 BasePriority

	// object directory for the new process
	4 UserObjectDirectory

	36 Reserved
endstruct

const PRIORITY_IDLE           0
const PRIORITY_LOWUSER        1
const PRIORITY_DEFAULT        8
const PRIORITY_RESPONSIVE     10
const PRIORITY_HIGHUSER       23
const PRIORITY_LOWREALTIME    24
const PRIORITY_MEDIUMREALTIME 28
const PRIORITY_HIGHREALTIME   31