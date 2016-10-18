distribution report
reportInstancesDayDistributionUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock].

	^(OrbeonFormDefRegistryDistributionReport applicationName: self applicationName formName: formName distribution: distribution)
		startDate: startDate;
		endDate: endDate;
		conditionStringBlock: formConditionBlock blockSource;
		distributionMethod: sortSelector;
		sumSecondsToConstruct: secondsToRun;
		yourself