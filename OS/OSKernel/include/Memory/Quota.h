struct MmQuotaBlock
	4 References

	4 HeapUsed
	4 HeapMax

	4 VMUsed
	4 VMMax
endstruct

const MMQUOTAINFINITE -1

extern MmQuotaBlockCreate { vmmax heapmax -- quota ok }
extern MmQuotaBlockInitialize { vmmax heapmax quota -- ok }
extern MmQuotaBlockReference { quota -- }
extern MmQuotaBlockDereference { quota -- }

extern MmQuotaCharge { charge -- ok }
extern MmQuotaChargeProcess { charge process -- ok }
extern MmQuotaBlockCharge { charge quota -- ok }
extern MmQuotaUncharge { charge -- }
extern MmQuotaUnchargeProcess { charge process -- }
extern MmQuotaBlockUncharge { charge quota -- }
extern MmQuotaBlockPrint { quota -- }
extern MmQuotaBlockChargeVM { charge quota -- ok }
extern MmQuotaBlockUnchargeVM { charge quota -- }

externptr MmQuotaSystem