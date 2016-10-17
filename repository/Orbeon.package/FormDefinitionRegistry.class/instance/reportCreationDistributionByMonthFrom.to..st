distribution
reportCreationDistributionByMonthFrom: startDate to: endDate

	^self reportCreationDistributionByMonthFrom: startDate to: endDate satisfying: [:each | true]