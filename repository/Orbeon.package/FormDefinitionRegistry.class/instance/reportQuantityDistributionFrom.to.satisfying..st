distribution
reportQuantityDistributionFrom: startDate to: endDate satisfying: formConditionBlock
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock].

	^(OrbeonFormDefRegistryDistributionReport applicationName: orbeonApplication applicationName formName: self getFormName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			sumSecondsToConstruct: secondsToRun;
			yourself