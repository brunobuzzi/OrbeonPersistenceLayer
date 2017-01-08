form instances
getSectionNamed: aString

	^sectionDefinitions at: aString ifAbsent: [nil]