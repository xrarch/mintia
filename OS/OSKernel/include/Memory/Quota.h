struct MmQuotaBlock
	4 References
	4 Next
	4 Prev
	4 UID

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

extern MmQuotaBlockGetByUID { uid forkquotablock -- quotablock ok }
extern MmQuotaBlockCreate { uid wsmax pghpmax vmmax heapmax -- quotablock ok }
extern MmQuotaBlockFork { uid quotablock -- newquotablock ok }
extern MmQuotaBlockInitialize { uid wsmax pghpmax vmmax heapmax quotablock -- ok }
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
externptr MmQuotaListMutex