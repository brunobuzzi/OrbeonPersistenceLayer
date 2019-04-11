other
removeSubSection: aFormSectionDefinition

	aFormSectionDefinition parentSection: nil.

	^subSections remove: aFormSectionDefinition ifAbsent: []