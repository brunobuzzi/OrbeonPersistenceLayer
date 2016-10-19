distribution
reportCreationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			distributionMethod: #createdTime;
			yourself