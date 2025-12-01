extern HALXRstationCitronInb { port -- byte }

extern HALXRstationCitronIni { port -- int }

extern HALXRstationCitronInl { port -- long }

extern HALXRstationCitronOutb { byte port -- }

extern HALXRstationCitronOuti { int port -- }

extern HALXRstationCitronOutl { long port -- }

extern HALXRstationCitronWait { port -- }

extern HALXRstationCitronCommand { command port -- }

// doesn't wait for the device to report the operation as completed before returning
extern HALXRstationCitronCommandASync { command port -- }

extern HALXRstationCitronCommandASyncIdle { command port -- }