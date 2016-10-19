distribution
reportCreationDistributionByMonthFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			distributionMethod: #createdTime;
			yourself