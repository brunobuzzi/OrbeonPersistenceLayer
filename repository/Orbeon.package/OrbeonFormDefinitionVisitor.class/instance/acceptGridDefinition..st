other
acceptGridDefinition: aFormGridDefinition

	gridsDo value: aFormGridDefinition sectionDefinition value: aFormGridDefinition.

	aFormGridDefinition fieldDefinitionsDo: [:fieldDefinition | fieldsDo value: aFormGridDefinition sectionDefinition value: aFormGridDefinition value: fieldDefinition]