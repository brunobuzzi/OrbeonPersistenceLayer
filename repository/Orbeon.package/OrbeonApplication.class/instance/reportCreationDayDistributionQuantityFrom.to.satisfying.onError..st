distribution
reportCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			name: 'Application Creation Day Distribution';
			description: 'Display the number of created forms in each day of the selected Orbeon Application';
			startDate: startDate;
			endDate: endDate;
			distributionMethod: #createdTime;
			yourself