distribution
reportModificationDistributionByMonthFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesModificationDistributionByMonthFrom: startDate to: endDate.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself