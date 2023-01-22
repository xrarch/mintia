extern MmVirtualToPhysical { vaddr -- phyaddr }
extern MmVirtualToPFDBE { vaddr -- pfdbe }
extern MmVirtualtoPTEAddressUser { vaddr -- pteaddr }
extern MmVirtualtoPTEAddress { vaddr -- pteaddr }
extern MmVirtualtoPTEAddressWithFail { vaddr -- pteaddr ok }

extern MmVirtualAddressIsValid { vaddr -- isvalid }

#ifdef XR17032

// hardware PTE fields

const PTE_V  1  // valid
const PTE_W  2  // writable
const PTE_D  2  // dirty
const PTE_K  4  // kernel
const PTE_NC 8  // non-cacheable
const PTE_G  16 // global
const PTE_WC 32 // writecombine

// software PTE fields

const SWAPPTE_DEMANDZERO 0

const PTE_TLBHACK PTE_G

const PTE_KERNEL_ZERO PTE_TLBHACK
const PTE_KERNEL_DEMANDZERO (8 PTE_TLBHACK |)

const PTE_INSWAP      2
const PTE_TRANSITION  4
const PTE_KERNELSTACK 1024

const PTE_PAGEFILE_SHIFT 5
const PTE_PAGEFILE_MASK  15

const MMGUARDPTE        0xFFFF0010

#endif

#ifdef FOX32

// hardware PTE fields

const PTE_V  1  // valid
const PTE_W  2  // writable
const PTE_D  2  // dirty
const PTE_K  0  // kernel
const PTE_NC 0  // non-cacheable
const PTE_G  0  // global
const PTE_WC 0  // writecombine

// software PTE fields

const SWAPPTE_DEMANDZERO 0

const PTE_TLBHACK PTE_G

const PTE_KERNEL_ZERO PTE_TLBHACK
const PTE_KERNEL_DEMANDZERO (8 PTE_TLBHACK |)

const PTE_INSWAP      2
const PTE_TRANSITION  4
const PTE_KERNELSTACK 1024

const PTE_PAGEFILE_SHIFT 5
const PTE_PAGEFILE_MASK  15

const MMGUARDPTE        0xFFFF0010

#endif