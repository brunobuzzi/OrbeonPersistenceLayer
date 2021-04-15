tests
testFieldsValues
	| allFields |

	allFields := form getAllFields.

	self assert: ((allFields at: 'name' ifAbsent: [#()]) includes: 'Bruno').
	self assert: ((allFields at: 'surname' ifAbsent: [#()]) includes: 'Buzzi').

	self assert: ((allFields at: 'phones' ifAbsent: [#()]) includes: '4087536').
	self assert: ((allFields at: 'address' ifAbsent: [#()]) includes: 'chana').

	self assert: ((allFields at: 'phones' ifAbsent: [#()]) includes: '0999').
	self assert: ((allFields at: 'address' ifAbsent: [#()]) includes: 'Libre').

	self assert: ((allFields at: 'phones' ifAbsent: [#()]) includes: '712').
	self assert: ((allFields at: 'address' ifAbsent: [#()]) includes: 'pocitos').