tests
testFieldsValues
	| allFields |

	allFields := form getAllFields.

	self assert: ((allFields at: 'name' ifAbsent: [#()]) includes: 'Bruno').
	self assert: ((allFields at: 'surname' ifAbsent: [#()]) includes: 'Buzzi Brassesco').
	self assert: ((allFields at: 'phone' ifAbsent: [#()]) includes: '4444444445').
	self assert: ((allFields at: 'mail' ifAbsent: [#()]) includes: 'b@b.st').
	self assert: ((allFields at: 'boolean' ifAbsent: [#()]) includes: true).
	self assert: ((allFields at: 'mobile' ifAbsent: [#()]) includes: '0995689').
	self assert: ((allFields at: 'moneySubject' ifAbsent: [#()]) includes: '1').
	self assert: ((allFields at: 'quantity' ifAbsent: [#()]) includes: 12).
	self assert: ((allFields at: 'currency' ifAbsent: [#()]) includes: 45.36).
	self assert: ((allFields at: 'date1' ifAbsent: [#()]) includes: (Date fromString: '04/09/2021')).
	self assert: ((allFields at: 'dateTime' ifAbsent: [#()]) includes: (TimeStamp fromString: '04/09/2021 17:21:30')).
	self assert: ((allFields at: 'date2' ifAbsent: [#()]) includes: (Date fromString: '04/09/2021')).
	self assert: ((allFields at: 'date3' ifAbsent: [#()]) includes: (Date fromString: '04/09/2021')).
	self assert: ((allFields at: 'details' ifAbsent: [#()]) includes: 'Some details here').
	self assert: ((allFields at: 'type' ifAbsent: [#()]) includes: '2').
	self assert: ((allFields at: 'options' ifAbsent: [#()]) includes: '1').
	self assert: ((allFields at: 'options' ifAbsent: [#()]) includes: '2').
	self assert: ((allFields at: 'otherOptions' ifAbsent: [#()]) includes: '2').
	self assert: ((allFields at: 'otherOptions' ifAbsent: [#()]) includes: '3').
	self assert: ((allFields at: 'formatedText' ifAbsent: [#()]) anySatisfy: [:each | (each findString: 'This is rich text editor') ~=0]).