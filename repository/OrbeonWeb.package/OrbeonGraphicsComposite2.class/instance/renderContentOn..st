render
renderContentOn: html

	self renderOpenCloseIconOn: html.

	formsBatchedList items: (showDefinitionList ifTrue: [self getOrbeonApplicationClass getAllFormDefinitions] ifFalse: [selectedDefinition ifNil: [#()] ifNotNil: [:value | OrderedCollection with: value] ]).

	html div id: 'system-rols'; class: 'default-gray-table '; 
		with:[html render: (formsBatchedList table: self sewafTableForFormsDefinitions)].

	showOptionsForms 
	ifTrue: [html div with: [self renderGraphicsOptionsOn: html]]
	ifFalse: [html div with: [self renderGraphicsOptionsSwitchIconOn: html]].

	graphName ifNotNil: [self renderGraphOn: html]