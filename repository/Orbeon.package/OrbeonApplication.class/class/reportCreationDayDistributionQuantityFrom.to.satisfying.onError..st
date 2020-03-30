distribution
reportCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself