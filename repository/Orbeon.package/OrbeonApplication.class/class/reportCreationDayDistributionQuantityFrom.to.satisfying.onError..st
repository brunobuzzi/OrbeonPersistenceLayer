distribution
reportCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			name: 'Global Creation Day Distribution';
			description: 'Display the number of created forms in each day of all Orbeon Application';
			startDate: startDate;
			endDate: endDate;
			yourself