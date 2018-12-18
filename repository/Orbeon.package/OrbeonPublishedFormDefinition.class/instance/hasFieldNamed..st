Accessing
hasFieldNamed: fieldName

	^(self getFieldNamed: fieldName ifNone: [nil]) notNil