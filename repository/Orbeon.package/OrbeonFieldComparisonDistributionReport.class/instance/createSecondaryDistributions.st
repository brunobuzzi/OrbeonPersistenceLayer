other
createSecondaryDistributions

	self canonizeXAxis.

	fieldDistributions do: [:each | 
		each 
			xAxisIsDate: true;
			createSecondaryDistributionByYear; 
			createSecondaryDistributionByMonth; 
			createSecondaryDistributionByWeek].