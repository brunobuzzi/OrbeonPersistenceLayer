form-field-value
printAllFieldValuesAsPairsOn: aStream

	self getAllFields keysAndValuesDo: [:fieldName :collection |
		aStream nextPutAll: fieldName, ': '.
		collection do: [:value | aStream nextPutAll: value printString].
		aStream nextPutAll:  String cr.
	]