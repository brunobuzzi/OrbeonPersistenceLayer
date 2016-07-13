other
compare
	"Compare the receiver <formOne> with <formTwo>. ONLY answer differences at field value level.
	Check each field name of <formOne> is included in <formTwo>. 
	If the field name exist then compare the value of the <formOne> field with <formTwo> field value"
	| difference |

	difference := OrderedCollection new.
	formOne fields keysAndValuesDo: [:key :value |
		(formTwo hasFieldNamed: key) "<formTwo> has the field name <key> of <formOne> ???"
		ifFalse: [difference add: (FieldDoesNotExist form: formTwo fieldName: key)] "field does NOT exist in <formTwo> "
		ifTrue: [(value = (formTwo valueAt: key)) 
					ifFalse: [difference 
									add: ((FieldValueNotEqual form: formTwo fieldName: key) "field exist but value is different"
											valueOne: value;
											valueTwo: (formTwo valueAt: key);
											yourself).
					] 	]  ].

	comparisionResult := difference