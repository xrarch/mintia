externptr MmNonpagedPoolBytesUsed
externptr MmNonpagedPoolBytesPeak

externptr MmPagedPoolBytesUsed
externptr MmPagedPoolBytesPeak

extern MmPoolDump { tag -- usage }

// heap stuff

extern MmHeapChargeBytesGet { bytes -- charge }

extern MmHeapChargeGet { block -- charge }

externptr MmNonpagedHeapBytesUsedExternally
externptr MmNonpagedHeapBytesUsedInternally
externptr MmNonpagedHeapBytesUsedPeak

externptr MmPagedHeapBytesUsedExternally
externptr MmPagedHeapBytesUsedInternally
externptr MmPagedHeapBytesUsedPeak