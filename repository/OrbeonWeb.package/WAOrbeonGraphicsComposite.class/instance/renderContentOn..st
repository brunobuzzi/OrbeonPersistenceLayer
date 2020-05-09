render
renderContentOn: html

	self initializeReverseTranslation.
	formsBatchedList items: self getOrbeonApplicationClass getAllFormDefinitions.

	"see issue #1039 (option 2). The chart is generated inside a 'fake' html to see if there is any runtime error when evaluating the -query block-.
	this is a workaround of #1039 because the chart is generated twice"
	(self showChartExecuted and: [(self componentValueAt: 'queryBlock-error') isNil ]) ifTrue: [WAHtmlCanvas builder render: [:fakeHtml | chartDefinition renderOn: fakeHtml]].

	chartDefinition hasException
	ifTrue: [self addValue: chartDefinition exception description named: 'queryBlock-runtime-error']
	ifFalse: [self removeValueNamed: 'queryBlock-runtime-error'].

	html div class: 'display-flex'; with: [
		html div id: 'system-rols'; class: 'default-gray-table flex-2';
			with:[self renderOpenCloseIconOn: html.
					showDefinitionList ifTrue: [html render: (formsBatchedList table: self sewafTableForFormsDefinitions)].
		"searchValues keysAndValuesDo: [:key :value | html text: key, ': [', value, ']'. html break]."
	].

		(showDefinitionList and: [showOptionsForms]) 
		ifTrue: [html div id: 'form-chart-configuration'; class: 'flex-1'; with: [self renderGraphicsOptionsOn: html]].
		showDefinitionList ifTrue: [html div with: [self renderGraphicsOptionsSwitchIconOn: html]].
	].
	isRenderingChart ifFalse: [^self].

	(self componentValueAt: 'queryBlock-error') ifNotNil: [:value | ^self].

	chartDefinition renderOn: html.