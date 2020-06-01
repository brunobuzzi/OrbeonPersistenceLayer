other
on: aFormDefinitionRegistry xmlQuery: aXMLDocument

	formDefinitionRegistry := aFormDefinitionRegistry.
	xmlQuery := aXMLDocument.

	self createQueryNodes.

	self buildStreams.