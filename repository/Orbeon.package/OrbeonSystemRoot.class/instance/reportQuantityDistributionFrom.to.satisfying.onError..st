charts
reportQuantityDistributionFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler].

	^(OrbeonGlobalDistributionReport distribution: distribution)
			name: 'Global Quantity Distribution by Application';
			description: 'Display the quantity of forms in each Orbeon Application';
			xTitle: 'Orbeon Application';
			yTitle: 'Form Instances';
			startDate: startDate;
			endDate: endDate;
			sumSecondsToConstruct: secondsToRun;
			yourself