test
testFieldsTypes
	| types |

	types := form fieldsType.

	self assert: ((types at: 'data' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'dataType' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'name' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'phone' ifAbsent: [self assert: false]) = 'xf:integer').
	self assert: ((types at: 'details' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'date' ifAbsent: [self assert: false]) = 'xf:date').
	self assert: ((types at: 'option' ifAbsent: [self assert: false]) = 'xf:boolean').
	self assert: ((types at: 'control-1' ifAbsent: [self assert: false]) = 'xf:decimal').
	self assert: ((types at: 'time' ifAbsent: [self assert: false]) = 'xf:time').
	self assert: ((types at: 'checkOptions' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'radio-buttons' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'date2' ifAbsent: [self assert: false]) = 'xf:date').