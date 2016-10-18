distribution
reportQuantityDistributionFrom: startDate to: endDate
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDistributionQuantityFrom: startDate to: endDate].

	^(OrbeonFormDefRegistryDistributionReport applicationName: orbeonApplication applicationName formName: self getFormName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			sumSecondsToConstruct: secondsToRun;
			yourself