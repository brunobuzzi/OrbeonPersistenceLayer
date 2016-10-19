distribution
reportModificationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesModificationDayDistributionQuantityFrom: self getStartDate to: self getEndDate.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself