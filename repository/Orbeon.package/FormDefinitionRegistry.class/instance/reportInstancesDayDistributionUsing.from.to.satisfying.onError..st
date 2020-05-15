distribution
reportInstancesDayDistributionUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonFormDefRegistryDistributionReport applicationName: self applicationName formName: self getFormName distribution: distribution)
		name: 'Form Definition Creation/Modification Day Distribution';
		description: 'Display the number of created/updated forms in each day of the selected Form Definition (includes all versions)';
		startDate: startDate;
		endDate: endDate;
		conditionStringBlock: formConditionBlock blockSource;
		distributionMethod: sortSelector;
		sumSecondsToConstruct: secondsToRun;
		yourself