render
getDateFromSearchValueNamed: aString

	^self getDateFromSearchValueNamed: aString onError: (Date fromString: '01/01/2016')