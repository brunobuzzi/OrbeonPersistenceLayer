distribution
reportModificationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			distributionMethod: #modifiedTime;
			yourself