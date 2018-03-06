test
testFieldsInDocument
	| fields |

	fields := OrderedCollection new.
	(reader getAllFormFieldsIn: reader xmlDocument) do: [:eachField | fields add: (reader getNameFrom: eachField)].

	self assert: ((#('data' 'dataType' 'name' 'phone' 'details' 'date' 'option' 'control-1' 'time' 'checkOptions' 'radio-buttons' 'date2' '') intersection: fields) size = 12)