other
renderContentOn: html

	self renderOpenCloseIconOn: html.

	formsBatchedList items: (showDefinitionList ifTrue: [self getOrbeonApplicationClass getAllFormDefinitions] ifFalse: [selectedDefinition ifNil: [#()] ifNotNil: [:value | OrderedCollection with: value] ]).

	html div id: 'system-rols'; class: 'default-gray-table '; 
		with:[html render: (formsBatchedList table: self sewafTableForFormsDefinitions)].

	html div with: [
		html form with: [
			html fieldSet with: [
				self renderFormFieldComboOn: html.

				html label attributeAt: 'for' put: 'start'; with: ('Start' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'start'; callback: [:value | self addSearchValue: value named: 'start']; with: (self searchValueAt: 'start').
				html label attributeAt: 'for' put: 'end'; with: ('End' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'end'; callback: [:value | self addSearchValue: value named: 'end']; with: (self searchValueAt: 'end').

				html submitButton callback: [self drawApplicationFormsGraph]; with: 'App. Forms Def.'.
				html submitButton callback: [self drawTypesGraph]; with: 'Def. Types'. 
				html submitButton callback: [self drawFieldDistributionGraph]; with: 'Field Distr'.
			].
		].
	].

	graphName ifNotNil: [self renderGraphOn: html]