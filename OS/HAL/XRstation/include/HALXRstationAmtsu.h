fnptr HALXRstationAmtsuCallbackF { id -- }

extern HALXRstationAmtsuSelect { num -- }

extern HALXRstationAmtsuCheckMID { num -- mid }
extern HALXRstationAmtsuReadMID { -- mid }

extern HALXRstationAmtsuCommand { cmd -- }
extern HALXRstationAmtsuCommandAsync { cmd -- }

extern HALXRstationAmtsuWriteA { long -- }
extern HALXRstationAmtsuWriteB { long -- }

extern HALXRstationAmtsuReadA { -- long }
extern HALXRstationAmtsuReadB { -- long }

extern HALXRstationAmtsuSetInterrupt { dev -- }
extern HALXRstationAmtsuClearInterrupt { dev -- }

extern HALXRstationAmtsuSpecialCMD { a b cmd -- }

extern HALXRstationAmtsuReset { -- }

extern HALXRstationAmtsuEnumerate { func mid -- count }

extern HALXRstationAmtsuIDToIrq { id -- irq }
extern HALXRstationAmtsuIrqToID { irq -- id }