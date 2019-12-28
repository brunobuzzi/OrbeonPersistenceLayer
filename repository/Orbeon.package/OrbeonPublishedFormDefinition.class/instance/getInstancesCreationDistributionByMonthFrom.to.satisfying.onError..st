distribution
getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorBlock
	| distribution newDistribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorBlock.
	newDistribution := OrderPreservingDictionary new.

	#('January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December')
		do: [:each | newDistribution at: each put: 0]. 

	distribution keysAndValuesDo: [:key :value | | currentDate currentValue |
		currentDate := startDate addDays: key.
		currentValue := newDistribution at: currentDate monthName ifAbsent: [0].
		newDistribution at: currentDate monthName put: (currentValue + value).
	].

	^newDistribution