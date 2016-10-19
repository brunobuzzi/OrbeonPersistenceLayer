distribution
reportCreationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself