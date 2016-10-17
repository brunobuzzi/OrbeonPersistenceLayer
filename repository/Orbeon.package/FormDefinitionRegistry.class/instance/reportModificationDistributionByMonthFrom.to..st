distribution
reportModificationDistributionByMonthFrom: startDate to: endDate

	^self reportModificationDistributionByMonthFrom: startDate to: endDate satisfying: [:each | true]