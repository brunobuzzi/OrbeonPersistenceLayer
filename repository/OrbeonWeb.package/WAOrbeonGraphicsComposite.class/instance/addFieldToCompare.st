render
addFieldToCompare
	| field fieldsCollection |

	selectedDefinition ifNil: [^self]. 

	field := self getFieldName.
	field ifNil: [^self]. 
	fieldsCollection := selectedFields at: selectedDefinition ifAbsentPut: [OrderedCollection new].
	fieldsCollection add: field.

	chartDefinition distribution fieldsCollection: selectedFields