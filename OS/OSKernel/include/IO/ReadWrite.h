extern IOFileFlush { purge filehandle -- ok }

extern IOFileTruncate { newsize growing handle -- oldsize ok }

extern IOFileSeek { offset handle mode -- newoffset ok }

extern IOFileRead { timeout flags length buffer filehandle -- bytesread ok }
extern IOFileWrite { flags length buffer filehandle -- byteswritten ok }

extern IOFileReadAsync { requestblock flags offset length buffer filehandle -- ok }
extern IOFileWriteAsync { requestblock flags offset length buffer filehandle -- ok }

extern IODirectoryRename { srcname srcfilehandle destname destfilehandle -- ok }

extern IODirectoryUnlink { name filehandle -- ok }

extern IODirectoryRead { count dirent filehandle -- readcount ok }
extern IODirectoryReadObject { count dirent fileobject -- readcount ok }

// direct transfer helpers

extern IOSystemBufferTransfer { functioncode flags kflags buf length offset fcb -- bytes ok }
extern IOMDLTransfer { iop completionroutine functioncode flags kflags mdl offset fcb -- bytes ok }

extern IOReadWriteAsync { requestblock flags length offset buffer fileobject functioncode -- ok }
extern IOReadWrite { timeout flags length offset buffer fileobject functioncode -- bytes ok }