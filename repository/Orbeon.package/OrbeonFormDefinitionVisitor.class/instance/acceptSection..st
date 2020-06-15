other
acceptSection: aFormSectionDefinition

	sectionsDo value: aFormSectionDefinition.

	aFormSectionDefinition fieldDefinitions do: [:fieldDefinition | fieldsDo value: aFormSectionDefinition value: nil value: fieldDefinition].

	aFormSectionDefinition gridDefinitions do: [:each | each acceptVisitor: self].

	aFormSectionDefinition subSectionsDo: [:each | each acceptVisitor: self].