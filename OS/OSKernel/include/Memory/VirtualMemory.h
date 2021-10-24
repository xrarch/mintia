extern MmFlushUserTLBAll { -- }
extern MmGetPhysicalAddress { vaddr pagemap -- flags phyaddr ok }
extern MmGetVirtualAddress { vaddr pagemap -- pte ok }
extern MmMapVirtualAddress { phyaddr vaddr flags pagemap canalloc -- ok }
extern MmSetVirtualAddress { pte vaddr pagemap canalloc -- ok }
extern MmUnmapVirtualAddress { vaddr asid pagemap canfree attempt -- pte phyaddr ok }
extern MmPageDirectoryInitialize { pagemap -- }