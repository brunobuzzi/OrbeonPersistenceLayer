distribution
reportQuantityDistributionFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonFormDefRegistryDistributionReport applicationName: orbeonApplication applicationName formName: self getFormName distribution: distribution)
			name: 'Version Quantity Distribution by Form Definition';
			description: 'Display the quantity of forms of each version in the selected Form Definition';
			xTitle: 'Form Version';
			yTitle: 'Form Instances';
			startDate: startDate;
			endDate: endDate;
			sumSecondsToConstruct: secondsToRun;
			yourself