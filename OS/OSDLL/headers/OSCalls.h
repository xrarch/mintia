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