other
acceptSection: aFormSectionDefinition

	sectionsDo value: aFormSectionDefinition.

	aFormSectionDefinition fieldDefinitionsDo: [:fieldDefinition | fieldsDo value: aFormSectionDefinition value: nil value: fieldDefinition].

	aFormSectionDefinition gridDefinitionsDo: [:each | each acceptVisitor: self].

	aFormSectionDefinition subSectionsDo: [:each | each acceptVisitor: self].