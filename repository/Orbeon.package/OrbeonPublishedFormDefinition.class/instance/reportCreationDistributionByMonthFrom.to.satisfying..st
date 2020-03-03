distribution report
reportCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock].

	^(OrbeonPublishedFormDistributionReport applicationName: self applicationName formName: formName version: self version distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself