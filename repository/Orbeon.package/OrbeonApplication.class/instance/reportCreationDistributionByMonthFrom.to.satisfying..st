distribution
reportCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock
	| distribution |

	distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			conditionStringBlock: formConditionBlock blockSource;
			distributionMethod: #createdTime;
			yourself