other
removeFieldDefinition: aFormFieldDefinition

	^fieldDefinitions removeKey: aFormFieldDefinition name ifAbsent: []