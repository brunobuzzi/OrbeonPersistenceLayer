distribution report
reportInstancesModificationDistributionByMonthFrom: startDate to: endDate
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesModificationDistributionByMonthFrom: startDate to: endDate].

	^(OrbeonPublishedFormDistributionReport applicationName: self applicationName formName: formName version: self version distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself