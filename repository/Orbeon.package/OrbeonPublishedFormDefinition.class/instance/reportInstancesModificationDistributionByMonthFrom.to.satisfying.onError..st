distribution report
reportInstancesModificationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesModificationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonPublishedFormDistributionReport applicationName: self applicationName formName: formName version: self version distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself