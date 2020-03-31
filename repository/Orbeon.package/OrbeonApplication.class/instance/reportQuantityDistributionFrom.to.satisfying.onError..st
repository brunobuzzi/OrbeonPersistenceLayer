distribution
reportQuantityDistributionFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			sumSecondsToConstruct: secondsToRun;
			yourself