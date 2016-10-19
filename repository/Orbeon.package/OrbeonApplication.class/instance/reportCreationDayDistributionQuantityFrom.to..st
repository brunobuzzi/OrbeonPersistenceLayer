distribution
reportCreationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: self getStartDate to: self getEndDate.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			distributionMethod: #createdTime;
			yourself