other
acceptGridDefinition: aFormGridDefinition

	gridsDo value: aFormGridDefinition sectionDefinition value: aFormGridDefinition.

	aFormGridDefinition fieldDefinitions do: [:fieldDefinition | fieldsDo value: aFormGridDefinition sectionDefinition value: aFormGridDefinition value: fieldDefinition]