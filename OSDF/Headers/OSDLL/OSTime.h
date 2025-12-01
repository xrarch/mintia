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
extern OSTimeLocalGet { ostime ms sec -- }
extern OSTimePrint { ostime showyear -- }
extern OSDatePrint { ostime -- }

extern OSTimeToTimestamp { ostime -- sec ms }
extern OSLocalTimeToTimestamp { ostime -- sec ms }

extern OSMonthNameToIndex { month -- index }

extern OSTimeZoneNameToOffset { name -- offset ok }

extern OSTimeZoneOffsetToName { offset namebuf -- }

extern OSTimeZoneEnumerate { context func -- ok }

fnptr OSTimeZoneEnumerateF { context name offset -- ok }