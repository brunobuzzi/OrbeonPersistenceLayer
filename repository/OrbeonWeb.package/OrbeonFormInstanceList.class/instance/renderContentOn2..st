other
renderContentOn2: html
	| tableReport |

	description := app, ' . ', form.

	self renderSidebarOn: html.

	tableReport := self reportDefinition.
	batchedList items: collection asArray. "we assign the collection instances to the component [OrbeonFormDefinition instances] "
	batchedList batchSize: 10.
	tableReport rows: batchedList batch.
	html div id: 'orbeon-formInstances';
		with: ["collection isEmpty ifTrue: [^html]."
				html div id: 'search-form';
					with: [self renderSearchFieldsOn: html].
				html div id: 'search-version'; with: [self renderVersionCombonOn: html.].
				html div id: 'formularios-inst-report'; with: [
					html render: tableReport.
					html render: batchedList].
					].
	html div id: 'export-component'; with: [exportComponent ifNotNil: [html render: exportComponent]].
	html div id: 'back-arrow'; with: 
		[html anchor callback: [self hide];
			with: [html image  url: (SEWAFFileLibrary / #arrowback4iconPng); altText: 'Back to Definitions'; title: 'Back to Definitions']].