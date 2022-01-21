struct OSTime
	4 Year
	4 Month
	4 Hour
	4 Minute
	4 Second
	4 Milliseconds
	4 IsDST

	4 DayOfWeek
	4 DayOfYear
	4 DayOfMonth

	24 Reserved
endstruct

extern OSTimeUTCGet { ostime ms sec -- }
extern OSTimePrint { ostime showyear -- }