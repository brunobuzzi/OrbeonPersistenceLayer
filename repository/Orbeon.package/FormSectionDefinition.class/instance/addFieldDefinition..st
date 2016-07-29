other
addFieldDefinition: aFormFieldDefinition

	aFormFieldDefinition tabIndex: (fieldDefinitions size + 1).
	aFormFieldDefinition parentComponent: self.

	^fieldDefinitions at: aFormFieldDefinition name put: aFormFieldDefinition