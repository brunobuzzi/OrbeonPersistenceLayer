distribution
reportModificationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesModificationDayDistributionQuantityFrom: self getStartDate to: self getEndDate.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			distributionMethod: #modifiedTime;
			yourself