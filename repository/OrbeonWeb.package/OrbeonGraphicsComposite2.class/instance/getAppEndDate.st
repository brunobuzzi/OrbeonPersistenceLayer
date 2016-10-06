other
getAppEndDate

	^self getDateFromSearchValueNamed: 'appEnd' onError: (Date fromString: '12/31/2016')