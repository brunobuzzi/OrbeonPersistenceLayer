distribution
reportCreationDistributionByMonthFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			yourself