distribution
reportQuantityDistributionFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonFormDefRegistryDistributionReport applicationName: orbeonApplication applicationName formName: self getFormName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			sumSecondsToConstruct: secondsToRun;
			yourself