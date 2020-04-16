other
getEndDate

	^self getDateFromSearchValueNamed: 'end-date' onError: (Date fromString: '12/31/2020')