distribution
reportCreationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: self getStartDate to: self getEndDate.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself