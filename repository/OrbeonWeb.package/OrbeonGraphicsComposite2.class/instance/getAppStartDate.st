other
getAppStartDate

	^self getDateFromSearchValueNamed: 'appStart' onError: (Date fromString: '01/01/2016')