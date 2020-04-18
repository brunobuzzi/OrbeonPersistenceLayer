distribution
getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorBlock
	| distribution newDistribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorBlock.
	newDistribution := OrderPreservingDictionary new.

	#('January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December')
		do: [:each | newDistribution at: each put: 0]. 

	distribution keysAndValuesDo: [:arrayKey :value | | currentDate currentValue |
		currentDate := startDate addDays: (arrayKey first * 7).
		currentValue := newDistribution at: currentDate monthName ifAbsent: [0].
		newDistribution at: currentDate monthName put: (currentValue + value).
	].

	^newDistribution