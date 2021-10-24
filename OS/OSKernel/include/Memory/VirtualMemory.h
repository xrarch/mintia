extern MmGetPhysicalAddress { vaddr pagemap -- flags phyaddr ok }
extern MmMapVirtualAddress { phyaddr vaddr flags pagemap canalloc -- ok }
extern MmUnmapVirtualAddress { vaddr asid pagemap canfree attempt -- phyaddr ok }
extern MmPageDirectoryInitialize { pagemap -- }