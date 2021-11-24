extern MmPTECreate { vaddr pagemap canblock -- pteaddr ok }
extern MmPTEDelete { pteaddr vaddr pagemap -- ok }

extern MmVirtualtoPTEAddress { vaddr pagemap -- pteaddr ok }

extern MmPTEInterpret { pteaddr -- phyaddr flags ok }
extern MmPTEUpdateByVirtual { phyaddr flags vaddr pagemap asid -- oldphyaddr oldflags ok }
extern MmPTEUpdate { phyaddr flags vaddr pteaddr asid -- oldphyaddr oldflags ok }
extern MmPTEValid { pteaddr -- valid }
extern MmPTEUnmodify { pteaddr -- }

// platform-independent generic PTE flag representations
const PTE_V  1  // valid
const PTE_W  2  // writable
const PTE_K  4  // kernel
const PTE_NC 8  // non-cacheable
const PTE_G  16 // global

// XXX platform specific insofar as it needs to NOT overlap with the valid bit
const PTE_INSWAP     2
const PTE_TRANSITION 4