other
renderContentOn: html

	formsBatchedList items: self getOrbeonApplicationClass getAllFormDefinitions.

	html div id: 'system-rols'; class: 'default-gray-table '; 
		with:[html render: (formsBatchedList table: self sewafTableForFormsDefinitions).].

	html div with: [
		html form with: [
			html fieldSet with: [
				html submitButton callback: [self drawApplicationFormsGraph]; with: 'App. Forms Def.'.
				html submitButton callback: [self drawTypesGraph]; with: 'Def. Types'.] 
		].
	].

	graphName ifNotNil: [self renderGraphOn: html]