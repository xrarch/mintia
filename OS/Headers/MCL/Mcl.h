extern MclMachineCreate { -- machine ok }
extern MclMachineFree { machine -- }
extern MclMachineParseFile { filename interactive streamhandle machine -- rootblock ok }

extern MclMachineEvaluateNode { node machine -- value ok }

extern MclParseSubtreeFree { node -- }