extern IOFileFlush { purge filehandle -- ok }

extern IOFileTruncate { newsize growing handle -- oldsize ok }

extern IOFileSeek { offset handle mode -- newoffset ok }

extern IOFileRead { timeout flags length buffer filehandle -- bytesread ok }
extern IOFileReadObject { timeout flags length buffer fileobject process -- bytesread ok }

extern IOFileWrite { flags length buffer filehandle -- byteswritten ok }
extern IOFileWriteObject { flags length buffer fileobject process -- byteswritten ok }

extern IODirectoryRename { srcname srcfilehandle destname destfilehandle -- ok }

extern IODirectoryUnlink { name filehandle -- ok }

extern IODirectoryRead { dirent filehandle -- ok }
extern IODirectoryReadObject { dirent fileobject -- ok }

// direct transfer helpers

extern IORead { timeout flags kflags length offset buffer fcb lastmode -- bytesread ok }
extern IOWrite { flags kflags length offset buffer fcb lastmode -- byteswritten ok }