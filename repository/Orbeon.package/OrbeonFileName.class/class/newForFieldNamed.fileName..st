other
newForFieldNamed: fieldName fileName: fileName

	^(super newForFieldNamed: fieldName)
			osFileName: fileName;
			yourself