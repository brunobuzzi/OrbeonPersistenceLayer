distribution
reportCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			conditionStringBlock: formConditionBlock blockSource;
			distributionMethod: #createdTime;
			yourself