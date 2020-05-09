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
		chartDefinition resetDateGroupNameIfNeeded.
	].