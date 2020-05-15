distribution
reportQuantityDistributionFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			name: 'Application Quantity Distribution by Form Definition';
			description: 'Display the quantity of forms inside the selected Orbeon Application';
			xTitle: 'Form Definition';
			yTitle: 'Form Instances';
			startDate: startDate;
			endDate: endDate;
			sumSecondsToConstruct: secondsToRun;
			yourself