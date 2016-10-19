distribution
reportModificationDistributionByMonthFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesModificationDistributionByMonthFrom: startDate to: endDate.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			distributionMethod: #modifiedTime;
			yourself