other
testDateWithTimeZone
	"issue #198"
	| date |

	date := [Date fromOrbeonString: '2016-10-19-03:00' format: 'y-m-d'] on: Exception do: [:err | self assert: false].

	self assert: (date year = 2016).

	self assert: (date monthName = 'October').

	self assert: (date day = 19).