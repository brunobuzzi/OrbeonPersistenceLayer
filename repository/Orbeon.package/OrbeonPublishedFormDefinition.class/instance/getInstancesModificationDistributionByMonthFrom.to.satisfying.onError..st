distribution
getInstancesModificationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution newDistribution |

	distribution := self getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.
	newDistribution := OrderPreservingDictionary new.

	#('January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December')
		do: [:each | newDistribution at: each put: 0]. 

	distribution keysAndValuesDo: [:arrayKey :value | | currentDate currentValue |
		currentDate := startDate addDays: (arrayKey first * 7).
		currentValue := newDistribution at: currentDate monthName ifAbsent: [0].
		newDistribution at: currentDate monthName put: (currentValue + value).
	].

	^newDistribution