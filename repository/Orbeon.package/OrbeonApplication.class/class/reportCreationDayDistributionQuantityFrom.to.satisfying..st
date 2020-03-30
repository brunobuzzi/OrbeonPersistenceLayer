distribution
reportCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock
	| distribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself