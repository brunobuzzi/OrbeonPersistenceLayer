other
addGridDefinition: aFormGridDefinition

	aFormGridDefinition tabIndex: (gridDefinitions size + 1).

	aFormGridDefinition sectionDefinition: self.

	^gridDefinitions at: aFormGridDefinition name put: aFormGridDefinition