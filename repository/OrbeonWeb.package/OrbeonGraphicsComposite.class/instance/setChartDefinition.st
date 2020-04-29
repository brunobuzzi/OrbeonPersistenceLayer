other
setChartDefinition

	self basicCreateChartDefinition.

	chartDefinition
		scope: (self newChartScopeFor: chartDefinition);
		distribution: (OrbeonChartDistribution createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getDistributionName) on: chartDefinition);
		distributionType: (BIChartQuantityDistribution newOn: chartDefinition);
		chartType: (BIChartType createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getChartType) on: chartDefinition).

	chartDefinition distribution ifNotNil: [:distri | 
		self setPropertiesTo: distri.
		distri isFieldEvolutionComparison ifTrue: [distri fieldsCollection: selectedFields].
		chartDefinition resetDateGroupNameIfNeeded.
	].