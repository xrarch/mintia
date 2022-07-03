extern HALLIMNstationCitronInb { port -- byte }

extern HALLIMNstationCitronIni { port -- int }

extern HALLIMNstationCitronInl { port -- long }

extern HALLIMNstationCitronOutb { byte port -- }

extern HALLIMNstationCitronOuti { int port -- }

extern HALLIMNstationCitronOutl { long port -- }

extern HALLIMNstationCitronWait { port -- }

extern HALLIMNstationCitronCommand { command port -- }

// doesn't wait for the device to report the operation as completed before returning
extern HALLIMNstationCitronCommandASync { command port -- }

extern HALLIMNstationCitronCommandASyncIdle { command port -- }