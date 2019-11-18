form-field-value
generateFormFieldValueSet
	"The receiver create an IdentitySet <fieldsValues> of form field values <FormFieldValue>. 
	It creates one element <instance subclass of FormFieldValue> per field in the original XML form."

	"#getAllFields answer aDictionary where each key is the name of the field and each value is a collection of typed values"
	self getAllFields keysAndValuesDo: [:key :valuesCollection | | valueHolder |
			valueHolder := (fieldsValues includesKey: key) "<fieldsValues at:> answer aFieldValueHolder"
								ifFalse: [fieldsValues at: key put: (OrbeonFieldValueHolder newWithNoConvertionFor: self forFieldNamed: key)]
								ifTrue: [fieldsValues at: key].
			"convert string values to real type values or update added/removed values"
			valueHolder processFieldValueCollection: valuesCollection withFieldClass: (self classOf: key) in: self. "see issue #208"
			definition updateFieldInstancesFrom: valueHolder. "update general index collection of the OrbeonFormDefinition"

	].

	^fieldsValues