other
named: aString

	^self cache detect: [:each | each name = aString] ifNone: [nil]