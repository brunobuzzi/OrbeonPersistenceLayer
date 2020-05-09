chart settings
setChartDefinition

	self basicCreateChartDefinition.

	chartDefinition
		scope: (self newChartScopeFor: chartDefinition);
		distribution: self createChartDistributionOrNil;
		distributionType: (BIChartQuantityDistribution newOn: chartDefinition);
		chartType: self createChartTypeOrNil.

	chartDefinition distribution ifNotNil: [:distri | 
		self setPropertiesTo: distri.
		distri isFieldEvolutionComparison ifTrue: [distri fieldsCollection: selectedFields].
	].

	(self isFieldEvolutionDistributionChart or: [self isFieldEvolutionComparisonDistributionChart])
	ifTrue: [chartDefinition dateGroupName: self getDateGroupNameValue]
	ifFalse: [chartDefinition dateGroupName:nil]