struct MmQuotaBlock
	4 References

	4 HeapUsed
	4 HeapMax

	4 VMUsed
	4 VMMax

	4 WorkingSetUsed
	4 WorkingSetMax
endstruct

const MMQUOTAINFINITE -1

extern MmQuotaBlockCreate { wsmax vmmax heapmax -- quotablock ok }
extern MmQuotaBlockFork { quotablock -- newquotablock ok }
extern MmQuotaBlockInitialize { wsmax vmmax heapmax quotablock -- ok }
extern MmQuotaBlockReference { quotablock -- }
extern MmQuotaBlockDereference { quotablock -- }

extern MmQuotaChargeBuffer { buffersize -- ok }
extern MmQuotaUnchargeBuffer { buffersize -- }

extern MmQuotaBlockCharge { charge quotablock -- ok }
extern MmQuotaBlockUncharge { charge quotablock -- }
extern MmQuotaBlockChargeVM { charge quotablock -- ok }
extern MmQuotaBlockUnchargeVM { charge quotablock -- }
extern MmQuotaBlockChargeWorkingSet { charge quotablock -- ok }
extern MmQuotaBlockUnchargeWorkingSet { charge quotablock -- }
extern MmQuotaBlockPrint { quotablock -- }

extern MmSetQuota { quota quotablock -- }
extern MmQuotaQuery { query quotablock -- }

externptr MmQuotaSystem