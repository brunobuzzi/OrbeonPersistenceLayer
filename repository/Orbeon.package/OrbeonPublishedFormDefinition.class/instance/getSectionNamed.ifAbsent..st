form instances
getSectionNamed: aString ifAbsent: aBlock

	^sectionDefinitions at: aString ifAbsent: aBlock