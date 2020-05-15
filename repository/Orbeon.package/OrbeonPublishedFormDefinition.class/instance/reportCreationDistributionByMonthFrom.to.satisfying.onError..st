distribution report
reportCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonPublishedFormDistributionReport applicationName: self applicationName formName: formName version: self version distribution: distribution)
		name: 'Form Definition Quantity Creation Distribution by Month';
		description: 'Display by month the quantity of created forms in of the selected Form Definition Version';
		startDate: startDate;
		endDate: endDate;
		sumSecondsToConstruct: secondsToRun;
		yourself