extern DLLModuleCreate { name -- dll ok }
extern DLLModuleDelete { dll -- }
extern DLLModuleFindByName { name -- dll ok }
extern DLLModuleOpenFile { name -- handle ok }
extern DLLModuleDoImports { dll -- ok }
extern DLLModuleUndoImports { upto dll -- }

extern DLLModuleMap { section dll -- ok }
extern DLLModuleUnmap { dll -- }

extern DLLGetSymbol { name dll -- symbol ok }
extern DLLModuleResolveSymbols { dll -- ok }
extern DLLModuleApplyFixups { sectionheader id dll -- ok }
extern DLLModuleRebase { dll -- ok }