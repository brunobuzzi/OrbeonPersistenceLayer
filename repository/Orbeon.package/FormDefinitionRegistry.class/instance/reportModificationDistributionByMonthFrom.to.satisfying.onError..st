distribution
reportModificationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := self getInstancesModificationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.

	^(OrbeonFormDefRegistryDistributionReport applicationName: orbeonApplication applicationName formName: self getFormName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			conditionStringBlock: formConditionBlock blockSource;
			yourself