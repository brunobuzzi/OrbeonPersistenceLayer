other
testSlashDayMonthYearPM
	| timeStamp |

	timeStamp := DateTime fromOrbeonString: '1/12/2016 14:55 pm' dateFormat: '[D]/[M]/[Y]'.

	self assert: (timeStamp year = 2016).

	self assert: (timeStamp monthName = 'December').

	self assert: (timeStamp dayOfMonth = 1).

	self assert: (timeStamp hour = 14).

	self assert: (timeStamp minute = 55).