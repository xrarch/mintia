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
extern MmQuotaBlockUnchargeVM { charge quotablock -- }
extern MmQuotaBlockChargePaged { charge quotablock -- ok }
extern MmQuotaBlockUnchargePaged { charge quotablock -- }
extern MmQuotaBlockPrint { quotablock -- }

extern MmChargeCommit { pri pages -- ok }
extern MmUnchargeCommit { pages -- }

extern MmSetQuota { quota quotablock -- }
extern MmQuotaQuery { query quotablock -- }

externptr MmSystemQuota
externptr MmQuotaListMutex