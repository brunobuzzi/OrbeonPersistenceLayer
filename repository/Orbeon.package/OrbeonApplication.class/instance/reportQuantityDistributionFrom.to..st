distribution
reportQuantityDistributionFrom: startDate to: endDate
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDistributionQuantityFrom: startDate to: endDate].

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			sumSecondsToConstruct: secondsToRun;
			yourself