chart settings
setChartDefinition
	| currentDistribution |

	currentDistribution := chartDefinition distribution.
	
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
	ifFalse: [chartDefinition dateGroupName:nil].

	"if the distribution types is changed then the selected fields are reset"
	(chartDefinition distribution class == currentDistribution class) ifFalse: [selectedFields := Dictionary new].