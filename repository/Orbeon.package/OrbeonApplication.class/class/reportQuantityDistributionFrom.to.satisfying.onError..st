distribution
reportQuantityDistributionFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonGlobalDistributionReport distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			sumSecondsToConstruct: secondsToRun;
			yourself