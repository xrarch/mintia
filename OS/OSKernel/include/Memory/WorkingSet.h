extern MmWorkingSetListInitialize { process -- ok }
extern MmWorkingSetListFree { process -- }

extern MmWorkingSetTrim { dire pages process -- trimmed }
extern MmWorkingSetTrimRange { startva endva process -- }

extern MmWorkingSetSwapOut { process -- }

extern MmWorkingSetPurge { process -- }

extern MmWorkingSetRemap { flags startva endva process -- }

extern MmWorkingSetEntryInsert { vaddr wsleptr process -- }
extern MmWorkingSetEntryReserve { process -- wsli wsleptr ok }
extern MmWorkingSetEntryReplace { process -- wsli wsleptr ok }
extern MmWorkingSetEntryRemove { wsleptr process -- }
extern MmWorkingSetEntryFindByIndex { wsli process -- wsleptr ok }
extern MmWorkingSetEntryFindByVirtualAddress { vaddr process -- wsli wsleptr ok }
extern MmWorkingSetEntryFree { wsli wsleptr process -- }

extern MmManageWorkingSets { -- success }