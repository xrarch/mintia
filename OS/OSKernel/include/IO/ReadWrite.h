extern IOFileFlush { purge filehandle -- ok }

extern IOFileTruncate { newsize growing handle -- oldsize ok }

extern IOFileSeek { offset handle mode -- newoffset ok }

extern IOFileReadWriteObject { timeout flags length buffer fileobject write -- bytes ok }

extern IOFileRead { timeout flags length buffer filehandle -- bytesread ok }
extern IOFileWrite { flags length buffer filehandle -- byteswritten ok }

extern IOFileReadAsync { context porthandle flags offset length buffer filehandle -- ok }
extern IOFileWriteAsync { context porthandle flags offset length buffer filehandle -- ok }

extern IODirectoryRename { srcname srcfilehandle destname destfilehandle -- ok }

extern IODirectoryUnlink { name filehandle -- ok }

extern IODirectoryRead { dirent filehandle -- ok }
extern IODirectoryReadObject { dirent fileobject -- ok }

// direct transfer helpers

extern IOReadWrite { timeout flags kflags length offset buffer portobject fileobject lastmode write -- bytes ok }