distribution report
reportInstancesDayDistributionUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonPublishedFormDistributionReport applicationName: self applicationName formName: formName version: self version distribution: distribution)
		name: 'Form Definition Creation/Modification Day Distribution';
		description: 'Display the number of created/updated forms in each day of the selected Form Definition Version';
		startDate: startDate;
		endDate: endDate;
		conditionStringBlock: formConditionBlock blockSource;
		distributionMethod: sortSelector;
		sumSecondsToConstruct: secondsToRun;
		yourself