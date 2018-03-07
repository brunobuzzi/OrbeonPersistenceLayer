definition tests
testFieldTypes
	| fieldTypes |

	fieldTypes := reader getFieldTypes. "includes all fields inside a repeatable grid or not"

	self assert: ((fieldTypes at: 'name' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'surname' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'phone' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'mobile' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'moneySubject' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'quantity' ifAbsent: ['']) = 'xf:decimal').
	self assert: ((fieldTypes at: 'currency' ifAbsent: ['']) = 'xf:decimal').
	self assert: ((fieldTypes at: 'date1' ifAbsent: ['']) = 'xf:date').
	self assert: ((fieldTypes at: 'date2' ifAbsent: ['']) = 'xf:date').
	self assert: ((fieldTypes at: 'date3' ifAbsent: ['']) = 'xf:date').
	self assert: ((fieldTypes at: 'dateTime' ifAbsent: ['']) = 'xf:dateTime').
	self assert: ((fieldTypes at: 'details' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'type' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'options' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'otherOptions' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'formatedText' ifAbsent: ['']) = 'xf:string').