dates
getEndDate

	^self searchValueAt: 'end-date' ifAbsent: [] 
"	^self getDateFromSearchValueNamed: 'end-date' 
				onError: (Date fromString: '2020-12-31' usingFormat: #(3 2 1 $- 1 1 true true false))" "ISO - international date format"