distribution report
reportFieldDistributionFor: fieldName startDate: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getQuantityDistributionForFieldNamed: fieldName from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonFieldDistributionReport applicationName: self applicationName formName: formName version: self version fieldName: fieldName distribution: distribution)
		name: 'Quantity Distribution of Values for a Field';
		description: 'Display the distribution of values of the selected field';
		xTitle: 'Field Value';
		yTitle: 'Occurrences';
		fieldName: fieldName;
		sumSecondsToConstruct: secondsToRun;
		yourself