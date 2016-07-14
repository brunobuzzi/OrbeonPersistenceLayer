other
testDashMonthDayYear
	| date |

	date := Date fromOrbeonString: '1-12-2016' format: 'm-d-y'.

	self assert: (date year = 2016).

	self assert: (date monthName = 'January').

	self assert: (date day = 12).