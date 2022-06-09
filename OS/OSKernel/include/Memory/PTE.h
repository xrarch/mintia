extern MmPTECreate { vaddr process -- pteaddr ok }
extern MmPTEDelete { deref pteaddr vaddr process -- ok }

extern MmPTEReference { pri vaddr pagemap -- pfdbe pteaddr ok }
extern MmPTEDereference { pfdbe process -- }
extern MmVirtualtoPTEAddressUser { vaddr pagemap -- pteaddr }
extern MmVirtualtoPTEAddress { vaddr pagemap -- pteaddr }

extern MmPTEInterpret { pteaddr -- phyaddr flags ok }
extern MmPTEUpdateByVirtual { phyaddr flags vaddr pagemap asid -- oldphyaddr oldflags ok }
extern MmPTEUpdate { phyaddr flags vaddr pteaddr asid -- oldphyaddr oldflags ok }
extern MmPTEValid { pteaddr -- valid }

// platform-independent generic PTE flag representations
const PTE_V  1  // valid
const PTE_W  2  // writable
const PTE_K  4  // kernel
const PTE_NC 8  // non-cacheable
const PTE_G  16 // global

// XXX platform specific insofar as it needs to NOT overlap with the valid bit
const PTE_INSWAP     2
const PTE_TRANSITION 4

const PTE_SWAPFILE_SHIFT 4
const PTE_SWAPFILE_MASK  15

const MMGUARDPTE 0xFFFF0000