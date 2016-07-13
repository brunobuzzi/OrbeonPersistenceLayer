other
buildSummaryWith: aDictionary
	"Compare the receiver <formOne> with the dictionary of fields <aDictionary>. Answer matching and mismatching fields values.
	Check each key of <aDictionary> with the field names of <formOne>. 
	If the key and field name match then compare the value of the <aDictionary> for that key with the field value of <formOne>"
	| comparision |

	comparision := OrderedCollection new.
	aDictionary keysAndValuesDo: [:key :value |
		(formOne fields includesKey: key) "<formOne> has this field named <key> ???"
		ifFalse: [comparision add: (FieldDoesNotExist form: formOne fieldName: key)] "field in <formOne> doed NOT exist"
		ifTrue: [(value = (formOne valueAt: key)) 
					ifFalse: [comparision 
									add: ((FieldValueNotEqual form: formOne fieldName: key) "field in <formOne> doed exist but NOT equal value"
											valueOne: value;
											valueTwo: (formOne valueAt: key);
											yourself).]
					ifTrue: [comparision 
									add: ((FieldValueEqual form: formOne fieldName: key) "field in <formOne> doed exist with equal value"
											valueOne: value;
											yourself)] ]].
	^comparision