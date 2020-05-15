distribution
reportCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonGlobalDistributionReport distribution: distribution)
			name: 'Global Quantity Creation Distribution by Month';
			description: 'Display by month the quantity of created forms in of all Orbeon Application';
			startDate: startDate;
			endDate: endDate;
			yourself