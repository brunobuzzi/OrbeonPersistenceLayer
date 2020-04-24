render
removeFieldToCompare

	selectedFields remove: self getFieldName ifAbsent: [].

	chartDefinition distribution fieldsCollection: selectedFields