*orbeon
asOrbeonDateTimeString
	"yyyy-mm-ddThh:mm:ss+zzzz"
	| string offset offsetHours offsetMinutes offsetCopy |
	string := self asStringUsingFormat: #(3 2 1 $- 1 1 $: true true false).
	string at: 11 put: $T.
	offset := timeZone offsetAtLocal: self.
	string add: $..
	offsetCopy := offset abs // 60. "issue #363"
	offsetHours := offsetCopy // 60.
	offsetMinutes := offsetCopy \\ 60.
	offsetHours < 10 ifTrue: [string add: $0].
	string addAll: offsetHours printString.
	offsetMinutes < 10 ifTrue: [string add: $0].
	string addAll: offsetMinutes printString.
	^string.