other
testSlashYearMonthDay
	| date |

	date := Date fromOrbeonString: '2016/10/19' format: 'y/m/d'.

	self assert: (date year = 2016).

	self assert: (date monthName = 'October').

	self assert: (date day = 19).