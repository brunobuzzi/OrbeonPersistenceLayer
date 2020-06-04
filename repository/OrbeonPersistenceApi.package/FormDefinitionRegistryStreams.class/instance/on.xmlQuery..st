other
on: aFormDefinitionRegistry xmlQuery: aXMLDocument

	formDefinitionRegistry := aFormDefinitionRegistry.
	xmlQuery := aXMLDocument.

	permissions := self formDefinition getInvertedPermissions.