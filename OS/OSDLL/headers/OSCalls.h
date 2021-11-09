// note: this header is used to generate the syscall stubs and trampolines

// Ex
extern OSConsolePutCharacter { c -- ok }
extern OSSystemAbort { num1 num2 msg -- ok }

// Ob
extern OSObOpen { flags access initialobjecthandle path -- handle ok }
extern OSObQuery { handle query -- ok }

extern OSClose { handle -- ok }

// IO
extern OSFileQuery { filehandle query -- ok }
extern OSFileSeek { offset handle mode -- newoffset ok }
extern OSFileRead { timeout flags length buffer filehandle -- bytesread ok }
extern OSFileWrite { flags length buffer filehandle -- byteswritten ok }

extern OSSwapFileCreate { filehandle -- ok }

// Mm
extern OSSectionCreate { pageprotection anonsize filehandle permissions name -- sectionhandle ok }
extern OSSectionMapView { length startva sectionoffset sectionhandle processhandle pageprotection flags -- realva ok }
extern OSUnmapView { length vaddr processhandle -- ok }
extern OSRemapView { pageprotection length vaddr processhandle -- ok }

// Ps
extern OSThreadSleep { ms -- ok }