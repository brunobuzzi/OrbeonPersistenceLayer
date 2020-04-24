render
addFieldToCompare
	| field |

	field := self getFieldName.
	selectedFields add: field.

	chartDefinition distribution fieldsCollection: selectedFields