form building
addSectionDefinition: aFormSectionDefinition

	aFormSectionDefinition tabIndex: (sectionDefinitions size + 1).

	^sectionDefinitions at: aFormSectionDefinition name put: aFormSectionDefinition