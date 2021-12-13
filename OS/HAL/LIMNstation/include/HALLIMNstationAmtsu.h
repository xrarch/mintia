fnptr HALLIMNstationAmtsuCallbackF { id -- }

extern HALLIMNstationAmtsuSelect { num -- }

extern HALLIMNstationAmtsuCheckMID { num -- mid }
extern HALLIMNstationAmtsuReadMID { -- mid }

extern HALLIMNstationAmtsuCommand { cmd -- }
extern HALLIMNstationAmtsuCommandAsync { cmd -- }

extern HALLIMNstationAmtsuWriteA { long -- }
extern HALLIMNstationAmtsuWriteB { long -- }

extern HALLIMNstationAmtsuReadA { -- long }
extern HALLIMNstationAmtsuReadB { -- long }

extern HALLIMNstationAmtsuSetInterrupt { dev -- }
extern HALLIMNstationAmtsuClearInterrupt { dev -- }

extern HALLIMNstationAmtsuSpecialCMD { a b cmd -- }

extern HALLIMNstationAmtsuReset { -- }

extern HALLIMNstationAmtsuEnumerate { func mid -- count }

extern HALLIMNstationAmtsuIDToIrq { id -- irq }
extern HALLIMNstationAmtsuIrqToID { irq -- id }