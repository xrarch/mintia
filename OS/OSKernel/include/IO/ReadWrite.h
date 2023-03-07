extern IOFileFlush { purge filehandle -- ok }

extern IOFileTruncate { newsize growing handle -- oldsize ok }

extern IOFileSeek { offset handle mode -- newoffset ok }

extern IOFileRead { timeout flags length buffer filehandle -- bytesread ok }
extern IOFileWrite { flags length buffer filehandle -- byteswritten ok }

extern IOFileReadAsync { context porthandle flags offset length buffer filehandle -- ok }
extern IOFileWriteAsync { context porthandle flags offset length buffer filehandle -- ok }

extern IODirectoryRename { srcname srcfilehandle destname destfilehandle -- ok }

extern IODirectoryUnlink { name filehandle -- ok }

extern IODirectoryRead { dirent filehandle -- ok }
extern IODirectoryReadObject { dirent fileobject -- ok }

// direct transfer helpers

extern IOSystemBufferTransfer { functioncode flags kflags buf length offset fcb -- bytes ok }
extern IOMDLTransfer { iop completionroutine functioncode flags kflags mdl offset fcb -- bytes ok }

extern IOReadWriteAsync { context flags length offset buffer portobject fileobject functioncode -- ok }
extern IOReadWrite { timeout flags length offset buffer fileobject functioncode -- bytes ok }