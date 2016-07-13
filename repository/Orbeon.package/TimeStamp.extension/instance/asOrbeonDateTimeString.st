*orbeon
asOrbeonDateTimeString
	"yyyy-mm-ddThh:mm:ss+zzzz"
	| string offsetHours offsetMinutes |
	string := self asStringUsingFormat: #(3 2 1 $- 1 1 $: true true false).
	string at: 11 put: $T.
	string add: $..
	offset := offset abs // 60.
	offsetHours := offset // 60.
	offsetMinutes := offset \\ 60.
	offsetHours < 10 ifTrue: [string add: $0].
	string addAll: offsetHours printString.
	offsetMinutes < 10 ifTrue: [string add: $0].
	string addAll: offsetMinutes printString.
	^string.