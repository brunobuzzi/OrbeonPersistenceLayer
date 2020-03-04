distribution
getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate

	^self getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: [:e | true]