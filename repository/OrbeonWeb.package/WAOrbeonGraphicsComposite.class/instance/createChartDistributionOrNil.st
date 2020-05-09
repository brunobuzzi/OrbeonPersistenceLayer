chart settings
createChartDistributionOrNil

	(self getDistributionValue isNil or: [self getDistributionValue isEmpty]) ifTrue: [^nil].
	
	^OrbeonChartDistribution createSubInstanceFrom: self getDistributionName on: chartDefinition