render
renderContentOn: html

	self initializeReverseTranslation.
	formsBatchedList orderMode ifNil: [formsBatchedList items: self getOrbeonApplicationClass getAllFormDefinitions].

	"see issue #1039 (option 2). The chart is generated inside a 'fake' html to see if there is any runtime error when evaluating the -query block-.
	this is a workaround of #1039 because the chart is generated twice"
	(self showChartExecuted and: [(self componentValueAt: 'queryBlock-error') isNil ]) ifTrue: [WAHtmlCanvas builder render: [:fakeHtml | chartDefinition renderOn: fakeHtml]].

	chartDefinition hasException
	ifTrue: [self addValue: chartDefinition exception description named: 'queryBlock-runtime-error']
	ifFalse: [self removeValueNamed: 'queryBlock-runtime-error'].

	html div class: 'display-flex'; with: [
		html div class: 'default-gray-table flex-2';
			with:[isRenderingChart ifTrue: [self renderOpenCloseIconOn: html].
					showDefinitionList ifTrue: [html render: (formsBatchedList table: self sewafTableForFormsDefinitions)].
		].
		showDefinitionList ifTrue: [html div id: 'form-chart-configuration'; class: 'flex-1'; with: [self renderWizardOn: html.]].
	].

	isRenderingChart ifFalse: [^self].

	(self componentValueAt: 'queryBlock-error') ifNotNil: [:value | ^self].

	chartDefinition isReadyToRender ifFalse: [^self].
	chartDefinition renderOn: html.
	self renderStoreChartIconOn: html.