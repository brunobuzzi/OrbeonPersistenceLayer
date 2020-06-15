field definitions
includesSectionDefinitionNamed: aString

	^(self getSectionNamed: aString ifAbsent:[]) notNil