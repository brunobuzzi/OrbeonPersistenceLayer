tests
testFieldTypes

	self assert: ((form typeOf: 'name') = 'xf:string').
	self assert: ((form typeOf: 'surname') = 'xf:string').
	self assert: ((form typeOf: 'phone') = 'xf:string').
	self assert: ((form typeOf: 'mobile') = 'xf:string').
	self assert: ((form typeOf: 'moneySubject') = 'xf:string').
	self assert: ((form typeOf: 'quantity') = 'xf:decimal').
	self assert: ((form typeOf: 'currency') = 'xf:decimal').
	self assert: ((form typeOf: 'date1') = 'xf:date').
	self assert: ((form typeOf: 'date2') = 'xf:date').
	self assert: ((form typeOf: 'date3') = 'xf:date').
	self assert: ((form typeOf: 'dateTime') = 'xf:dateTime').
	self assert: ((form typeOf: 'details') = 'xf:string').
	self assert: ((form typeOf: 'type') = 'xf:string').
	self assert: ((form typeOf: 'options') = 'xf:string').
	self assert: ((form typeOf: 'otherOptions') = 'xf:string').
	self assert: ((form typeOf: 'formatedText') = 'xf:string').
	self assert: ((form typeOf: 'fileAttachment') = 'xf:anyURI').
	self assert: ((form typeOf: 'imageAttachment') = 'xf:anyURI').
	self assert: ((form typeOf: 'imageAnnotation') = 'xf:string').
	self assert: ((form typeOf: 'autocomplete') = 'xf:string').