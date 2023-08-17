// note: this header is used to generate the syscall stubs and trampolines.
// Sys prefix means it has a wrapper function in OSDLL.

// Ex

extern OSConsolePutCharacter { c -- ok }
extern OSSystemAbort { num1 num2 msg -- ok }

extern OSGetSystemConsoleName { namebuf -- ok }

extern OSGetBootFlags { -- bootflags ok }

extern OSContinue { alertable signum context -- ok }

extern OSQueryTime { -- sec ms }
extern OSQueryUptime { -- sec ms }

extern OSTimeZoneGet { -- offset ok }
extern OSTimeZoneSet { offset -- oldoffset ok }

extern OSTimeSet { sec ms -- ok }

extern OSShutdownSystem { mode -- ok }

extern OSVersion { query -- ok }

extern OSEventCreate { signaled type permissions name -- eventhandle ok }
extern OSEventReset { eventhandle -- signaled ok }
extern OSEventSignal { eventhandle -- ok }
extern OSEventPulse { eventhandle -- ok }
extern OSEventReadState { eventhandle -- signaled ok }

extern OSSemaphoreCreate { count permissions name -- semaphorehandle ok }
extern OSSemaphoreRelease { adjustment semaphorehandle -- ok }
extern OSSemaphoreReadState { semaphorehandle -- count ok }

extern OSMutexCreate { permissions name -- mutexhandle ok }
extern OSMutexRelease { mutexhandle -- ok }
extern OSMutexReadState { mutexhandle -- locked ok }

extern OSTimerCreate { permissions name -- timerhandle ok }
extern OSTimerReset { timerhandle -- signaled ok }
extern OSTimerEnqueue { interval timerhandle -- ok }
extern OSTimerDequeue { timerhandle -- ok }
extern OSTimerReadState { timerhandle -- signaled ok }

extern OSGetStatistics { statistics -- ok }

extern OSNvramVariableQuery { query -- ok }
extern OSNvramVariableSet { delete query -- ok }
extern OSNvramVariableRead { query index -- nextindex ok }

extern OSIsComputerOn { -- ison ok }
extern OSIsComputerOnFire { -- isonfire ok }

// Ob

extern OSOpenRelative { filetype objecttype flags access initialobjecthandle path -- handle ok }
extern OSClose { handle -- ok }

extern OSQuery { handle query -- ok }

extern OSWaitForMultipleObjects { alertable waittype timeout objectcount objecthandletable -- ok }
extern OSWaitForObject { alertable timeout objecthandle -- ok }

extern OSHandleDuplicate { handle access srcprocesshandle destprocesshandle -- newhandle ok }

extern OSObjectDirectoryCountQuery { directoryhandle -- count ok }
extern OSObjectDirectoryQueryAll { buffer maxquery directoryhandle -- count ok }
extern OSObjectDirectoryCreate { permissions name -- dirhandle ok }
extern OSObjectDirectoryInsert { objecthandle directoryhandle -- ok }
extern OSObjectDirectoryRemove { objecthandle -- ok }

extern OSSetSecurity { uid gid permissions handle -- ok }

// SysCreateRelative is wrapped by OSFileCreateRelative.
extern SysCreateRelative { filetype permissions flags access initialobjecthandle path -- handle ok }

// IO

extern OSFileQuery { filehandle query -- ok }
extern OSFileTruncate { newsize growing handle -- oldsize ok }
extern OSFileSeek { offset handle mode -- newoffset ok }
extern OSFileRead { timeout flags length buffer filehandle -- bytesread ok }
extern OSFileWrite { flags length buffer filehandle -- byteswritten ok }
extern OSFileFlush { purge filehandle -- ok }

extern OSFileSetInformation { info filehandle -- ok }

extern OSFileReadAsync { requestblock flags offset length buffer filehandle -- ok }
extern OSFileWriteAsync { requestblock flags offset length buffer filehandle -- ok }
extern OSFileCancelIO { wait filehandle -- ok }

extern OSDirectoryRename { srcname srcfilehandle destname destfilehandle -- ok }
extern OSDirectoryUnlink { name filehandle -- ok }
extern OSDirectoryRead { count dirent filehandle -- readcount ok }

extern OSPageFileCreateRelative { minpages maxpages pri initialobjecthandle path -- ok }
extern OSPageFileQuery { query id -- ok }

extern OSIOControl { arg2 arg1 filehandle -- ret ok }

extern OSGetBootDevicePath { buffer -- ok }

extern OSFilesystemMount { flags handle fsname -- ok }
extern OSFilesystemUnmount { handle -- ok }

extern OSMountQueryAll { buffer maxquery -- count ok }
extern OSMountCountQuery { -- count ok }
extern OSMountUpdateFlags { newflags handle -- ok }
extern OSMountGetFilesystemName { buffer handle -- ok }
extern OSMountSet { query handle -- ok }

extern OSFlushModifiedPages { -- ok }

// Mm

extern OSSectionCreate { anonsize permissions name -- sectionhandle ok }
extern OSMapView { length startva sectionoffset mappedhandle processhandle pageprotection flags -- realva ok }
extern OSUnmapView { length vaddr processhandle -- ok }
extern OSRemapView { pageprotection length vaddr processhandle -- ok }
extern OSFlushView { length vaddr processhandle -- ok }
extern OSAllocate { length startva processhandle pageprotection flags -- realva ok }

extern OSMemoryQuery { query -- ok }

extern OSWorkingSetPurge { -- ok }

extern OSSynchronizeIcache { -- }

// Ps

extern OSProcessCreate { quotauid sectionhandle creationflags permissions name -- processhandle ok }
extern OSProcessSignal { signal processhandle -- ok }
extern OSProcessOpenByPID { access pid -- processhandle ok }
extern OSProcessQuery { processhandle query -- ok }
extern OSProcessQueryByPID { pid query -- ok }
extern OSProcessReadStatus { processhandle -- status ok }
extern OSProcessSetConsoleGroup { filehandle processhandle -- ok }
extern OSProcessBasePrioritySet { priority processhandle -- ok }

extern OSProcessSignalActivation { activationstatus -- ok }
extern OSProcessWaitForActivation { timeout processhandle -- activationstatus ok }

extern OSProcessExit { status -- }

extern OSProcessCountQuery { -- count ok }
extern OSProcessQueryAll { buffer maxquery -- count ok }

extern OSSetQuota { quota processhandle -- ok }
extern OSQuotaQuery { query processhandle -- ok }

extern OSThreadGetExceptionStatus { -- status }
extern OSThreadSleep { ms -- ok }
extern OSThreadSleepEx { alertable ms -- ok }
extern OSThreadCreate { context startfunc creationflags permissions name processhandle -- threadhandle ok }
extern OSThreadTerminate { status threadhandle -- ok }
extern OSThreadSuspend { threadhandle -- ok }
extern OSThreadResume { threadhandle -- ok }
extern OSThreadReadStatus { threadhandle -- status ok }
extern OSThreadQuery { threadhandle query -- ok }

extern OSThreadSignal { signal threadhandle -- ok }
extern OSThreadMaskSignal { signal threadhandle -- ok }
extern OSThreadDeliverOnWaitSignal { signal threadhandle -- ok }

extern OSJobCreate { parentjobhandle signalonclose flags permissions name -- jobhandle ok }
extern OSJobAddProcess { processhandle jobhandle -- ok }
extern OSJobRemoveProcess { processhandle -- ok }
extern OSJobSignal { propagate signal jobhandle -- ok }

// Co

extern OSSetSystemConsole { filehandle -- ok }

extern OSConsoleSignal { signal filehandle -- ok }
extern OSIsAConsole { filehandle -- ok }

extern OSDuplexCreate { flags name permissions -- duplexhandle filehandle ok }

// Se

extern OSCheckPermission { permission processhandle -- ok }
extern OSGrantPermission { permission processhandle -- ok }

// IPC

extern OSPortCreate { flags maxlen permissions name -- porthandle ok }

extern OSPortConnectRelative { rxmsg txmsg timeout initialobjecthandle path -- porthandle ok }
extern OSPortAccept { context txmsg reject porthandle -- ok }

extern OSPortSendAndWaitReceive { rxmsg txmsg timeout porthandle -- ok }
extern OSPortSendAndWaitReply { rxmsg txmsg timeout porthandle -- ok }

extern OSPortOpenProcessByClientID { access clientid porthandle -- processhandle ok }