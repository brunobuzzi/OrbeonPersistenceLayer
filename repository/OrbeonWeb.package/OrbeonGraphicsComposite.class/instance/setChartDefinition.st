other
setChartDefinition

	chartDefinition
		scope: (self newChartScopeFor: chartDefinition);
		distribution: (BIChartDistribution createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getDistributionName) on: chartDefinition);
		distributionType: (BIChartQuantityDistribution newOn: chartDefinition);
		chartType: (BIChartType createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getChartType) on: chartDefinition).