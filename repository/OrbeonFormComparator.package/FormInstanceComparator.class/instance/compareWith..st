other
compareWith: aDictionary
	"Compare the receiver <formOne> with the dictionary of fields <aDictionary>.ONLY answer mismatching fields values.
	Check field names of <formOne> with each key of <aDictionary>. 
	If the key and field name match then compare the value of the <aDictionary> for that key with the field value of <formOne>"
	| difference |

	difference := OrderedCollection new.
	formOne fields keysAndValuesDo: [:key :value |
		(aDictionary includesKey: key)
		ifFalse: [difference add: (FieldDoesNotExist form: nil fieldName: key)] "<aDictionary> does NOT include <formOne> field"
		ifTrue: [(value = (aDictionary at: key)) "<aDictionary> VALUE does is equal to <formOne> field value ???"
					ifFalse: [difference 
									add: ((FieldValueNotEqual form: nil fieldName: key) "value is different"
											valueOne: value;
											valueTwo: (aDictionary at: key);
											yourself).
					] 	]  ].
	^difference