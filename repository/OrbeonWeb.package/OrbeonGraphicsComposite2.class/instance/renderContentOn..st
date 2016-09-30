other
renderContentOn: html

	self renderOpenCloseIconOn: html.

	formsBatchedList items: (showDefinitionList ifTrue: [self getOrbeonApplicationClass getAllFormDefinitions] ifFalse: [selectedDefinition ifNil: [#()] ifNotNil: [:value | OrderedCollection with: value] ]).

	html div id: 'system-rols'; class: 'default-gray-table '; 
		with:[html render: (formsBatchedList table: self sewafTableForFormsDefinitions)].

	html div with: [
		self renderApplicationGraphicsFormOn: html.
		self renderFormDefinitionGraphicsFormOn: html.
	].

	graphName ifNotNil: [self renderGraphOn: html]