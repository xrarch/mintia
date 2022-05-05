extern MmWorkingSetLock { processobject -- ok }
extern MmWorkingSetLockTimeout { timeout processobject -- ok }
extern MmWorkingSetTryLock { processobject -- ok }
extern MmWorkingSetUnlock { processobject -- }

extern MmWorkingSetListInitialize { process -- ok }
extern MmWorkingSetListFree { process -- }

extern MmWorkingSetTrim { dire pages process -- trimmed }
extern MmWorkingSetTrimRange { startva endva process -- }

extern MmWorkingSetPurge { process -- }

extern MmWorkingSetRemap { flags startva endva process -- }

extern MmWorkingSetEntryInsert { vaddr isfilepage wsleptr process -- }
extern MmWorkingSetEntryReserve { process -- wsli wsleptr ok }
extern MmWorkingSetEntryReplace { process -- wsli wsleptr ok }
extern MmWorkingSetEntryRemove { wsleptr process -- }
extern MmWorkingSetEntryFindByIndex { wsli process -- wsleptr ok }
extern MmWorkingSetEntryFindByVirtualAddress { vaddr process -- wsli wsleptr ok }
extern MmWorkingSetEntryFree { wsli wsleptr process -- }

extern MmManageWorkingSets { -- success }

const MMWORKINGSETTABLESIZE       (128 MmPoolSlab_SIZEOF -)
const MMWORKINGSETENTRIESPERTABLE (MMWORKINGSETTABLESIZE 4 /)