render
renderContentOn: html

	formsBatchedList items: (showDefinitionList ifTrue: [self getOrbeonApplicationClass getAllFormDefinitions] ifFalse: [selectedDefinition ifNil: [#()] ifNotNil: [:value | OrderedCollection with: value] ]).

	html div class: 'display-flex'; with: [
		html div id: 'system-rols'; class: 'default-gray-table flex-2';
			with:[self renderOpenCloseIconOn: html.
					html render: (formsBatchedList table: self sewafTableForFormsDefinitions)].

		showOptionsForms 
		ifTrue: [html div id: 'form-chart-configuration'; class: 'flex-1'; with: [self renderGraphicsOptionsOn: html]]
		ifFalse: [html div with: [self renderGraphicsOptionsSwitchIconOn: html]].
	].
	"graphName ifNotNil: [self renderGraphOn: html] "

	(self isGlobalScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawGlobalAppFormInstancesCreationDayDistributionGraphOn: html].
	(self isGlobalScope and: [self isBarQuantityChart]) ifTrue: [^self drawGlobalBarQuantityChartOn: html].
	(self isGlobalScope and: [self isDonutQuantityChart]) ifTrue: [^self drawGlobalPieQuantityChartOn: html].


	(self isApplicationScope and: [self isDonutQuantityChart]) ifTrue: [^self drawAppDonutQuantityChartOn: html].
	(self isApplicationScope and: [self isBarQuantityChart]) ifTrue: [^self drawAppBarQuantityChartOn: html].


	(self isFormDefinitionAllVersionsScope and: [self isDonutQuantityChart]) ifTrue: [^self drawFormRegistryDonutQuantityChartOn: html].
	(self isFormDefinitionAllVersionsScope and: [self isBarQuantityChart]) ifTrue: [^self drawFormRegistryBarQuantityChartOn: html].