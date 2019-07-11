render
renderContentOn: html

	self renderOpenCloseIconOn: html.

	formsBatchedList items: (showDefinitionList ifTrue: [self getOrbeonApplicationClass getAllFormDefinitions] ifFalse: [selectedDefinition ifNil: [#()] ifNotNil: [:value | OrderedCollection with: value] ]).

	html div id: 'system-rols'; class: 'default-gray-table '; 
		with:[html render: (formsBatchedList table: self sewafTableForFormsDefinitions)].

	showOptionsForms 
	ifTrue: [html div with: [self renderGraphicsOptionsOn: html]]
	ifFalse: [html div with: [self renderGraphicsOptionsSwitchIconOn: html]].

	"graphName ifNotNil: [self renderGraphOn: html] "

	(self isGlobalScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawGlobalAppFormInstancesCreationDayDistributionGraphOn: html].
	(self isGlobalScope and: [self isBarQuantityChart]) ifTrue: [^self drawGlobalBarQuantityChartOn: html].
	(self isGlobalScope and: [self isDonutQuantityChart]) ifTrue: [^self drawGlobalPieQuantityChartOn: html].


	(self isApplicationScope and: [self isDonutQuantityChart]) ifTrue: [^self drawAppDonutQuantityChartOn: html].
	(self isApplicationScope and: [self isBarQuantityChart]) ifTrue: [^self drawAppBarQuantityChartOn: html].


	(self isFormDefinitionAllVersionsScope and: [self isDonutQuantityChart]) ifTrue: [^self drawFormRegistryDonutQuantityChartOn: html].
	(self isFormDefinitionAllVersionsScope and: [self isBarQuantityChart]) ifTrue: [^self drawFormRegistryBarQuantityChartOn: html].