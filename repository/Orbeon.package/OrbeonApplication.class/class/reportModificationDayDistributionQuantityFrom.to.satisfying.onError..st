distribution
reportModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself