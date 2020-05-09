chart settings
createChartTypeOrNil

	(self getChartTypeValue isNil or: [self getChartTypeValue isEmpty]) ifTrue: [^nil].

	^BIChartType createSubInstanceFrom: self getChartType on: chartDefinition