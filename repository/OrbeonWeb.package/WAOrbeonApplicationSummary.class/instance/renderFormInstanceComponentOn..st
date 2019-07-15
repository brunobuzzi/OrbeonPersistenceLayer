main components
renderFormInstanceComponentOn: html

	html div id: 'form-instances-component'; with: [
		html div with: [
			html anchor 
					callback: [self setClassSide];
					with: [html image url: (SEWAFIconLibrary / #arrowsleftcircular32Png); 
																title: ('Go to Definitions' translateIn: self session); 
																altText: ('Go to Definitions' translateIn: self session)].
		].
		(selectedFormDefinition numberOfInstances > 0)
		ifTrue: [html div class: 'default-gray-table'; with: [html render: (innerBatchList table: self tableForOrbeonInstance)].
					self exportToCSV].
	].
	html div id: 'export-component'; with: [html render: exportComponent].