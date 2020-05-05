chart settings
createChartDistributionOrNil

	(self getDistributionValue isNil or: [self getDistributionValue isEmpty]) ifTrue: [^nil].
	
	^OrbeonChartDistribution createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getDistributionName) on: chartDefinition