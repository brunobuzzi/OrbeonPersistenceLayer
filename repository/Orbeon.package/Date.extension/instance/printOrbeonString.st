*orbeon
printOrbeonString
	"See: https://github.com/orbeon/orbeon-forms/issues/4966"
	| yearString monthString dayString |

	yearString := self year printString.
	monthString := self monthIndex printString.
	(monthString size = 1) ifTrue: [monthString := '0', monthString].
	dayString := self dayOfMonth printString.
	(dayString size = 1) ifTrue: [dayString := '0', dayString].

	^yearString, '-', monthString , '-', dayString