other
addFieldDefinition: aFormFieldDefinition

	aFormFieldDefinition tabIndex: (fieldDefinitions size + 1).

	^fieldDefinitions at: aFormFieldDefinition name put: aFormFieldDefinition