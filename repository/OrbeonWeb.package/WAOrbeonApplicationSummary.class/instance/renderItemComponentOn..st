other
renderItemComponentOn: html

	selectedFormInstance := nil.
	selectedLateralItem ifNil: [^self].

	self isClassSide 
	ifTrue: [	exportComponent := nil.
				innerBatchList items: self getDefinitionsCollection.
				html div class: 'default-gray-table'; with: [html render: (innerBatchList table: self tableForOrbeonDefinition)]]
	ifFalse: [html div class: 'default-gray-table'; with: [html render: (innerBatchList table: self tableForOrbeonInstance)].
				self exportToCSV.
				html div id: 'export-component'; with: [html render: exportComponent].].