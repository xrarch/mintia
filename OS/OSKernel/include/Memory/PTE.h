extern MmPTECreate { vaddr process -- pteaddr ok }
extern MmPTEDelete { deref pteaddr vaddr process -- ok }

extern MmPTEReference { pri vaddr process -- pfdbe pteaddr ok }
extern MmPTEDereference { pfdbe process -- }
extern MmVirtualtoPTEAddressUser { vaddr pagemap -- pteaddr }
extern MmVirtualtoPTEAddress { vaddr pagemap -- pteaddr }

extern MmPTEInterpret { pteaddr -- phyaddr flags ok }
extern MmPTEUpdateByVirtual { phyaddr flags vaddr pagemap asid -- oldphyaddr oldflags ok }
extern MmPTEUpdate { phyaddr flags vaddr pteaddr asid -- oldphyaddr oldflags ok }
extern MmPTEValid { pteaddr -- valid }
extern MmPTEIsZero { pte -- iszero }

struct MmPTECountTableHeader
	4 Next
	4 Number
endstruct

const MMPTECOUNTTABLESIZE (32 MmAllocatedHeapBlock_SIZEOF - MmPTECountTableHeader_SIZEOF -)
const MMPTECOUNTSPERTABLE (MMPTECOUNTTABLESIZE 2 /)

extern MmProcessPTECountGet { pri vaddr process -- ptect ok }

#ifdef LIMN2600

// hardware PTE fields

const PTE_V  1  // valid
const PTE_W  2  // writable
const PTE_K  4  // kernel
const PTE_NC 8  // non-cacheable
const PTE_G  16 // global
const PTE_WC 32 // writecombine

// software PTE fields

const SWAPPTE_DEMANDZERO 0

const PTE_TLBHACK PTE_G

const PTE_KERNEL_ZERO PTE_TLBHACK
const PTE_KERNEL_DEMANDZERO (8 PTE_TLBHACK |)

const PTE_INSWAP     2
const PTE_TRANSITION 4

const PTE_SWAPFILE_SHIFT 5
const PTE_SWAPFILE_MASK  15

const MMGUARDPTE 0xFFFF0010

#endif