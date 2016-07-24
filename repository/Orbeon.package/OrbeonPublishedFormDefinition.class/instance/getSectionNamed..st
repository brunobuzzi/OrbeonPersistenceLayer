other
getSectionNamed: aString

	^sectionDefinitions at: aString ifAbsent: [nil]