other
renderFormDefinitionFor: anOrbeonFormDefinition
	| formDefinitions |

	formDefinitions := self model getAllDefinitionsInEdition.

	definitionsArea collection: (formDefinitions select: [:each | each getApplicationName = anOrbeonFormDefinition getApplicationName]).