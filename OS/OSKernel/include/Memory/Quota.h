struct MmQuotaBlock
	4 References

	4 HeapUsed
	4 HeapMax
endstruct

const MMQUOTAINFINITE -1

extern MmQuotaBlockCreate { heapmax -- quota ok }
extern MmQuotaBlockInitialize { heapmax quota -- ok }
extern MmQuotaBlockReference { quota -- }
extern MmQuotaBlockDereference { quota -- }

extern MmQuotaCharge { charge -- ok }
extern MmQuotaChargeProcess { charge process -- ok }
extern MmQuotaBlockCharge { charge quota -- ok }
extern MmQuotaUncharge { charge -- }
extern MmQuotaUnchargeProcess { charge process -- }
extern MmQuotaBlockUncharge { charge quota -- }
extern MmQuotaBlockPrint { quota -- }

externptr MmQuotaSystem