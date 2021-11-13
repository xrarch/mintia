struct MmQuotaBlock
	4 References

	4 HeapUsed
	4 HeapMax

	4 VMUsed
	4 VMMax
endstruct

const MMQUOTAINFINITE -1

extern MmQuotaBlockCreate { vmmax heapmax -- quotablock ok }
extern MmQuotaBlockInitialize { vmmax heapmax quotablock -- ok }
extern MmQuotaBlockReference { quotablock -- }
extern MmQuotaBlockDereference { quotablock -- }

extern MmQuotaBlockCharge { charge quotablock -- ok }
extern MmQuotaBlockUncharge { charge quotablock -- }
extern MmQuotaBlockChargeVM { charge quotablock -- ok }
extern MmQuotaBlockUnchargeVM { charge quotablock -- }
extern MmQuotaBlockPrint { quotablock -- }

externptr MmQuotaSystem