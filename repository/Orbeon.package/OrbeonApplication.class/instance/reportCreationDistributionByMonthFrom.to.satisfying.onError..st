distribution
reportCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			name: 'Application Quantity Creation Distribution by Month';
			description: 'Display by month the quantity of created forms in of the selected Orbeon Application';
			startDate: startDate;
			endDate: endDate;
			conditionStringBlock: formConditionBlock blockSource;
			distributionMethod: #createdTime;
			yourself