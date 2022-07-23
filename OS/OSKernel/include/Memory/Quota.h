struct MmQuotaBlock
	4 References

	4 HeapUsed
	4 HeapMax

	4 VMUsed
	4 VMMax

	4 PagedHeapUsed
	4 PagedHeapMax
endstruct

const MMQUOTAINFINITE -1

extern MmQuotaBlockCreate { pghpmax vmmax heapmax -- quotablock ok }
extern MmQuotaBlockFork { quotablock -- newquotablock ok }
extern MmQuotaBlockInitialize { pghpmax vmmax heapmax quotablock -- ok }
extern MmQuotaBlockReference { quotablock -- }
extern MmQuotaBlockDereference { quotablock -- }

extern MmQuotaChargeBuffer { buffersize -- ok }
extern MmQuotaUnchargeBuffer { buffersize -- }

extern MmQuotaBlockCharge { charge quotablock -- ok }
extern MmQuotaBlockUncharge { charge quotablock -- }
extern MmQuotaBlockChargeVM { charge quotablock -- ok }
extern MmQuotaBlockUnchargeVM { charge quotablock -- }
extern MmQuotaBlockChargePaged { charge quotablock -- ok }
extern MmQuotaBlockUnchargePaged { charge quotablock -- }
extern MmQuotaBlockPrint { quotablock -- }

extern MmSetQuota { quota quotablock -- }
extern MmQuotaQuery { query quotablock -- }

externptr MmQuotaSystem