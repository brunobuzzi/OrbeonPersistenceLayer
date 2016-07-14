other
testFieldsValues
	| allFields |

	allFields := form getAllFields.

	self assert: ((allFields at: 'name' ifAbsent: [#()]) includes: 'bruno').
	self assert: ((allFields at: 'surname' ifAbsent: [#()]) includes: 'buzzo').
	self assert: ((allFields at: 'phone' ifAbsent: [#()]) includes: '4444444445').
	self assert: ((allFields at: 'mail' ifAbsent: [#()]) includes: 'b@e.tv').
	self assert: ((allFields at: 'boolean' ifAbsent: [#()]) includes: 'true').
	self assert: ((allFields at: 'mobile' ifAbsent: [#()]) includes: '09998').
	self assert: ((allFields at: 'moneySubject' ifAbsent: [#()]) includes: '3').
	self assert: ((allFields at: 'quantity' ifAbsent: [#()]) includes: '5005').
	self assert: ((allFields at: 'currency' ifAbsent: [#()]) includes: '122.5').
	self assert: ((allFields at: 'date1' ifAbsent: [#()]) includes: '2016-04-08').
	self assert: ((allFields at: 'dateTime' ifAbsent: [#()]) includes: '2016-04-13T12:50:00').
	self assert: ((allFields at: 'date2' ifAbsent: [#()]) includes: '2006-07-07').
	self assert: ((allFields at: 'date3' ifAbsent: [#()]) includes: '2016-04-19').
	self assert: ((allFields at: 'details' ifAbsent: [#()]) includes: 'these are the details').
	self assert: ((allFields at: 'type' ifAbsent: [#()]) includes: '1').
	self assert: ((allFields at: 'options' ifAbsent: [#()]) includes: '2 1').
	self assert: ((allFields at: 'otherOptions' ifAbsent: [#()]) includes: '2').
	self assert: ((allFields at: 'formatedText' ifAbsent: [#()]) anySatisfy: [:each | (each findString: 'this is a') ~=0]).