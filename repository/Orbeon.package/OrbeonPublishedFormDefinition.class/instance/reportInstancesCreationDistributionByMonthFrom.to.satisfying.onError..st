distribution report
reportInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonPublishedFormDistributionReport applicationName: self applicationName formName: formName version: self version distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself