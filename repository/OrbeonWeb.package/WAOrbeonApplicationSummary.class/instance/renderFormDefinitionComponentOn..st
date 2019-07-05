main components
renderFormDefinitionComponentOn: html

	exportComponent := nil.
	innerBatchList items: self getDefinitionsCollection.
	html div class: 'default-gray-table'; with: [html render: (innerBatchList table: self tableForOrbeonDefinition)]