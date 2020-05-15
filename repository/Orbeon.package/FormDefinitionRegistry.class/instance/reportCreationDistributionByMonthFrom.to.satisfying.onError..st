distribution
reportCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonFormDefRegistryDistributionReport applicationName: orbeonApplication applicationName formName: self getFormName distribution: distribution)
			name: 'Form Definition Quantity Creation Distribution by Month';
			description: 'Display by month the quantity of created forms in of the selected Form Definition (includes all versions)';
			startDate: startDate;
			endDate: endDate;
			conditionStringBlock: formConditionBlock blockSource;
			yourself