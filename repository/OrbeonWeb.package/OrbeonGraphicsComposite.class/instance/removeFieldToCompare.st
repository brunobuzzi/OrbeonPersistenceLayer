render
removeFieldToCompare
	| fieldsCollection field | 

	selectedDefinition ifNil: [^self]. 

	field := self getFieldName.
	fieldsCollection := selectedFields at: selectedDefinition ifAbsent: [^self].

	fieldsCollection remove: field ifAbsent: [].

	chartDefinition distribution fieldsCollection: selectedFields