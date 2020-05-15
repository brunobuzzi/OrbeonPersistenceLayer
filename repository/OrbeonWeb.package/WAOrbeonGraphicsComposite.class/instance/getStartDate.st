dates
getStartDate

	^self searchValueAt: 'start-date' ifAbsent: [] 

"	^self getDateFromSearchValueNamed: 'start-date' 
			onError: (Date fromString: '2020-01-01' usingFormat: #(3 2 1 $- 1 1 true true false))" "ISO - international date format"