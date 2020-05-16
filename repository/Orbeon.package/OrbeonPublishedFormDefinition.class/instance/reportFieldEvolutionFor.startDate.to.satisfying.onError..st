distribution report
reportFieldEvolutionFor: fieldName startDate: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getFieldEvolutionOf: fieldName from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonFieldDistributionReport applicationName: self applicationName formName: formName version: self version fieldName: fieldName distribution: distribution)
		name: 'Field Evolution';
		description: 'Display the evolution (sum) of the selected field in the selected timespan';
		xTitle: 'Field Summation';
		yTitle: 'Timespan';
		fieldName: fieldName;
		sumSecondsToConstruct: secondsToRun;
		yourself