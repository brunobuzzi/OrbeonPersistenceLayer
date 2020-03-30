distribution
reportCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself