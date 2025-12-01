extern ObRootDirectoryLock { alertable -- ok }
extern ObRootDirectoryLockShared { alertable -- ok }
extern ObRootDirectoryUnlock { -- }

extern ObDirectoryCreate { permissions name -- dirhandle ok }
extern ObDirectoryCreateObject { permissions name flags -- dirobject ok }
extern ObDirectoryCountQuery { directoryhandle -- count ok }
extern ObDirectoryQueryAll { buffer maxquery directoryhandle -- count ok }
extern ObDirectoryInsert { objecthandle directoryhandle -- ok }
extern ObDirectoryRemove { objecthandle -- ok }
extern ObDirectoryRemoveByPointer { locked object -- ok }
extern ObDirectoryInsertByPointers { object directory -- ok }
extern ObDirectoryDumpTree { directory spaces -- }

extern ObObjectReferenceByPath { flags path initialobject process -- object ok }
extern ObObjectOpenByPath { filetype objecttype flags access initialobjecthandle path -- handle ok }
extern ObObjectOpenByPathProcess { filetype objecttype flags access initialobject path process -- handle ok }

extern ObIsPathRelative { path -- isrelative }