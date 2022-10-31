struct MmQuotaBlock
	4 References

	4 PoolUsed
	4 PoolMax

	4 PagedPoolUsed
	4 PagedPoolMax

	4 VMUsed
	4 VMMax

	4 WorkingSetUsed
	4 WorkingSetMax
endstruct

const MMQUOTAINFINITE -1

extern MmQuotaBlockCreate { wsmax pghpmax vmmax heapmax -- quotablock ok }
extern MmQuotaBlockFork { quotablock -- newquotablock ok }
extern MmQuotaBlockInitialize { wsmax pghpmax vmmax heapmax quotablock -- ok }
extern MmQuotaBlockReference { quotablock -- }
extern MmQuotaBlockDereference { quotablock -- }

extern MmQuotaChargeBuffer { buffersize -- ok }
extern MmQuotaUnchargeBuffer { buffersize -- }

extern MmQuotaBlockCharge { charge quotablock -- ok }
extern MmQuotaBlockUncharge { charge quotablock -- }
extern MmQuotaBlockChargeWS { charge quotablock -- ok }
extern MmQuotaBlockUnchargeWS { charge quotablock -- }
extern MmQuotaBlockChargeVM { charge quotablock -- ok }
extern MmQuotaBlockChargeVMNoExtend { charge quotablock -- ok }
extern MmQuotaBlockUnchargeVM { charge quotablock -- }
extern MmQuotaBlockChargePaged { charge quotablock -- ok }
extern MmQuotaBlockUnchargePaged { charge quotablock -- }
extern MmQuotaBlockPrint { quotablock -- }

extern MmSetQuota { quota quotablock -- }
extern MmQuotaQuery { query quotablock -- }

externptr MmQuotaSystem