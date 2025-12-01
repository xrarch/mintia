const MMIO_NOCACHE      0
const MMIO_CACHED       1
const MMIO_WRITECOMBINE 2

extern MmIORegionMap { cached length phyaddr -- vaddr ok }
extern MmIORegionUnmap { length vaddr -- }