other
acceptSection: aFormSectionDefinition

	sectionsDo value: aFormSectionDefinition.

	aFormSectionDefinition fieldDefinitions do: [:fieldDefinition | fieldsDo value: aFormSectionDefinition value: nil value: fieldDefinition].

	aFormSectionDefinition gridDefinitions do: [:each | each acceptVisitor: self].

	aFormSectionDefinition subSections do: [:each | each acceptVisitor: self].