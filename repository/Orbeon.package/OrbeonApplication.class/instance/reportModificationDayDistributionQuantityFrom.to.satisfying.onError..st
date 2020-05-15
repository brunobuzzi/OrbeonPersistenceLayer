distribution
reportModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			name: 'Application Modification Day Distribution';
			description: 'Display the number of updated forms in each day of the selected Orbeon Application';
			startDate: startDate;
			endDate: endDate;
			distributionMethod: #modifiedTime;
			yourself