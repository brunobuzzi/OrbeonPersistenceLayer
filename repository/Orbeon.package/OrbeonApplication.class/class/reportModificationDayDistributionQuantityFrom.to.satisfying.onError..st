distribution
reportModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			name: 'Global Modification Day Distribution';
			description: 'Display the number of updated forms in each day of all Orbeon Application';
			startDate: startDate;
			endDate: endDate;
			yourself