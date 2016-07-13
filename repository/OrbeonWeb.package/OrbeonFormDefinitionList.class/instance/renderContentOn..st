other
renderContentOn: html

	self renderSidebarOn: html.

	html div id: 'orbeon-formDefinition';
		with: ["self renderFormsDefinitionOn: html"
				collection isEmpty ifTrue: [^html].
				"html image url: (SEWAFFileLibrary / #publicadosbannerPng).
				html div id: 'formularios-publicados'; with: 'Formularios Publicados'.
				html break."
				batchedList items: self getDefinitionsCollection.
				html div id: 'formularios-def-report'; with: [html render: (batchedList table: self reportDefinition)]].