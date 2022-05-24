extern MmProcessInitialize { sectionobject process -- ok }
extern MmProcessUninitialize { process -- ok }

extern MmProcessSwapOut { process -- }

extern MmProcessChargePageTables { startva endva process -- ok }
extern MmProcessUnchargePageTables { process -- }

extern MmThreadInitialize { thread -- ok }
extern MmThreadUninitialize { thread -- ok }