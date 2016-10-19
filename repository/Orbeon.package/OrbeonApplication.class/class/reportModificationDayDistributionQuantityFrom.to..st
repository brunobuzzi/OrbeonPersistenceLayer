distribution
reportModificationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself