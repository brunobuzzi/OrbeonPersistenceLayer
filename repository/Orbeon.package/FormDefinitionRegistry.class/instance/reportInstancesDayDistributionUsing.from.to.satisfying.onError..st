distribution
reportInstancesDayDistributionUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonFormDefRegistryDistributionReport applicationName: self applicationName formName: self getFormName distribution: distribution)
		startDate: startDate;
		endDate: endDate;
		conditionStringBlock: formConditionBlock blockSource;
		distributionMethod: sortSelector;
		sumSecondsToConstruct: secondsToRun;
		yourself