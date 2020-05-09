chart settings
basicCreateChartDefinition

	chartDefinition := BISingleChartDefinition newFor: self session user in: selectedDefinition.

	chartDefinition scope: (self newChartScopeFor: chartDefinition).