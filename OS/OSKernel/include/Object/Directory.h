extern ObRootDirectoryLockUnalertable { -- }

extern ObRootDirectoryLock { -- ok }

extern ObRootDirectoryUnlock { -- }

extern ObDirectoryCreate { permissions name -- dirhandle ok }

extern ObDirectoryCreatePermanent { permissions name -- dirhandle ok }

extern ObDirectoryCreateFlags { permissions name flags -- dirhandle ok }

extern ObDirectoryInsert { objecthandle directoryhandle -- ok }

extern ObDirectoryRemove { objecthandle -- ok }

extern ObDirectoryRemoveByPointer { locked object -- ok }

extern ObDirectoryInsertByPointers { object directory -- ok }

extern ObDirectoryDumpTree { directory spaces -- }