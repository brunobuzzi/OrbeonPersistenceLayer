other
testSlashDayMonthYear
	| date |

	date := Date fromOrbeonString: '1/12/2016' format: 'd/m/y'.

	self assert: (date year = 2016).

	self assert: (date monthName = 'December').

	self assert: (date day = 1).