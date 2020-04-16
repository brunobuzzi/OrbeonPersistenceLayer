other
getStartDate

	^self getDateFromSearchValueNamed: 'start-date' onError: (Date fromString: '01/01/2020')