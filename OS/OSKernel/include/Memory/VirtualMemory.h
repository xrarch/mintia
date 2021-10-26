extern MmFlushUserTLBAll { -- }
extern MmGetVirtualAddress { vaddr pagemap -- flags phyaddr pte ok }
extern MmMapVirtualAddress { phyaddr vaddr flags pagemap -- ok }
extern MmRemapVirtualAddress { phyaddr vaddr flags asid pagemap -- ok }
extern MmSetVirtualAddress { pte vaddr pagemap -- ok }
extern MmUnmapVirtualAddress { vaddr asid pagemap canfree attempt -- pte phyaddr ok }
extern MmPageDirectoryInitialize { pagemap -- }

const MMPTEFLAG_COWINSWAP 2