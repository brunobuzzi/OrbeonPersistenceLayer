dates
getDateFromSearchValueNamed: aString onError: anObject

	^[Date fromString: (self searchValueAt: aString) usingFormat: #(3 2 1 $- 1 1 true true false) " '2018-01-01'"] 
		on: Error 
		do: [:err | (anObject class == Date) ifTrue: [self addSearchValue: '2020-01-01' "ISO - international date format" named: aString].
		anObject]