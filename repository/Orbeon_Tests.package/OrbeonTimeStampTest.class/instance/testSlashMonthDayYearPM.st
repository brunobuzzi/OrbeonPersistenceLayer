other
testSlashMonthDayYearPM
	| timeStamp |

	timeStamp := TimeStamp fromOrbeonString: '1/12/2016 14:55 pm' dateFormat: '[M]/[D]/[Y]'.

	self assert: (timeStamp year = 2016).

	self assert: (timeStamp monthName = 'January').

	self assert: (timeStamp dayOfMonth = 12).

	self assert: (timeStamp hour = 14).

	self assert: (timeStamp minute = 55).