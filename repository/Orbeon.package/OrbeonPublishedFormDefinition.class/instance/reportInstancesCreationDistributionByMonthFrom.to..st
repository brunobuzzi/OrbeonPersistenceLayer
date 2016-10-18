distribution report
reportInstancesCreationDistributionByMonthFrom: startDate to: endDate
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesCreationDistributionByMonthFrom: startDate to: endDate].

	^(OrbeonPublishedFormDistributionReport applicationName: self applicationName formName: formName version: self version distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself