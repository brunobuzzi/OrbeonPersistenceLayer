render
renderContentOn: html

	formsBatchedList items: self getOrbeonApplicationClass getAllFormDefinitions.

	html div class: 'display-flex'; with: [
		html div id: 'system-rols'; class: 'default-gray-table flex-2';
			with:[self renderOpenCloseIconOn: html.
					showDefinitionList ifTrue: [html render: (formsBatchedList table: self sewafTableForFormsDefinitions)]].

		(showDefinitionList and: [showOptionsForms]) 
		ifTrue: [html div id: 'form-chart-configuration'; class: 'flex-1'; with: [self renderGraphicsOptionsOn: html]].
		showDefinitionList ifTrue: [html div with: [self renderGraphicsOptionsSwitchIconOn: html]].
	].
	"graphName ifNotNil: [self renderGraphOn: html] "

	showOptionsForms := false.
	showDefinitionList := false.
	(self isGlobalScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawGlobalAppFormInstancesCreationDayDistributionGraphOn: html].
	(self isGlobalScope and: [self isDayDistributionModificationChart]) ifTrue: [^self drawGlobalAppFormInstancesModificationDayDistributionGraphOn: html].
	(self isGlobalScope and: [self isDonutCreationByMonthChart]) ifTrue: [^self drawGlobalFormInstancesCreationPieByMonthGraphOn: html].
	(self isGlobalScope and: [self isDonutModificationByMonthChart]) ifTrue: [^self drawGlobalFormInstancesModificationPieByMonthGraphOn: html].
	(self isGlobalScope and: [self isBarQuantityChart]) ifTrue: [^self drawGlobalBarQuantityChartOn: html].
	(self isGlobalScope and: [self isDonutQuantityChart]) ifTrue: [^self drawGlobalPieQuantityChartOn: html].

	(self isApplicationScope and: [self isDonutQuantityChart]) ifTrue: [^self drawAppDonutQuantityChartOn: html].
	(self isApplicationScope and: [self isBarQuantityChart]) ifTrue: [^self drawAppBarQuantityChartOn: html].
	(self isApplicationScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawAppFormInstancesCreationDayDistributionGraphOn: html].
	(self isApplicationScope and: [self isDayDistributionModificationChart]) ifTrue: [^self drawAppFormInstancesModificationDayDistributionGraphOn: html].
	(self isApplicationScope and: [self isDonutCreationByMonthChart]) ifTrue: [^self drawAppFormInstancesCreationPieByMonthGraphOn: html].
	(self isApplicationScope and: [self isDonutModificationByMonthChart]) ifTrue: [^self drawAppFormInstancesModificationPieByMonthGraphOn: html].

	(self isFormDefinitionAllVersionsScope and: [self isDonutQuantityChart]) ifTrue: [^self drawFormRegistryDonutQuantityChartOn: html].
	(self isFormDefinitionAllVersionsScope and: [self isBarQuantityChart]) ifTrue: [^self drawFormRegistryBarQuantityChartOn: html].
	(self isFormDefinitionAllVersionsScope and: [self isDayDistributionCreationChart]) ifTrue: [self drawFormRegistryCreationDayDistributionGraphOn: html].
	(self isFormDefinitionAllVersionsScope and: [self isDayDistributionModificationChart]) ifTrue: [self drawFormRegistryModificationDayDistributionGraphOn: html].
	(self isFormDefinitionAllVersionsScope and: [self isDonutCreationByMonthChart]) ifTrue: [self drawFormRegistryFormInstancesCreationPieByMonthGraphOn: html].
	(self isFormDefinitionAllVersionsScope and: [self isDonutModificationByMonthChart]) ifTrue: [self drawFormRegistryFormInstancesModificationPieByMonthGraphOn: html].

	(self isFormDefinitionScope and: [self isDonutFieldTypeDistributionChart]) ifTrue: [^self drawFormDefinitionTypesDonutQuantityChartOn: html].
	(self isFormDefinitionScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawFormDefinitionCreationDayDistributionGraphOn: html].
	(self isFormDefinitionScope and: [self isDayDistributionModificationChart]) ifTrue: [^self drawFormDefinitionModificationnDayDistributionGraphOn: html].
	(self isFormDefinitionScope and: [self isDonutCreationByMonthChart]) ifTrue: [^self drawFormDefinitionFormInstancesCreationPieByMonthGraphOn: html].
	(self isFormDefinitionScope and: [self isDonutModificationByMonthChart]) ifTrue: [^self drawFormDefinitionFormInstancesModificationPieByMonthGraphOn: html].