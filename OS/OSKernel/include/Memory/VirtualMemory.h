extern MmFlushUserTLBAll { -- }
extern MmGetVirtualAddress { vaddr pagemap -- flags phyaddr pte ok }
extern MmMapVirtualAddress { phyaddr vaddr flags pagemap -- ok }
extern MmRemapVirtualAddress { phyaddr vaddr flags asid pagemap -- pteaddr ok }
extern MmSetVirtualAddress { pte vaddr pagemap -- ok }
extern MmUnmapVirtualAddress { vaddr asid pagemap canfree attempt -- pte phyaddr ok }
extern MmMapUnmodifyPTE { pteaddr -- }
extern MmPageDirectoryInitialize { pagemap -- }

// XXX platform specific insofar as it needs to NOT overlap with the valid bit
const PTE_INSWAP 2