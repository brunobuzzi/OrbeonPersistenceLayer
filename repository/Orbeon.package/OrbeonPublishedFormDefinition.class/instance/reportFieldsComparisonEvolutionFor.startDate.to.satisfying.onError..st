distribution report
reportFieldsComparisonEvolutionFor: fieldCollection startDate: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distributionCollection secondsToRun |

	distributionCollection := OrderedCollection new.
	secondsToRun := Time secondsElapsedTime: [
		fieldCollection do: [:each | | distributionReport |
			distributionReport := self reportFieldEvolutionFor: each startDate: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.
			distributionReport xAxisIsDate: true.
			distributionReport seriesName: each.
			distributionCollection add: distributionReport.
		].
	].

	^(OrbeonFieldComparisonDistributionReport distribution: distributionCollection)
		name: 'Fields Summation Comparison';
		description: 'Display the summation of the selected fields';
		xTitle: 'Timespan';
		yTitle: 'Field Summation';
		sumSecondsToConstruct: secondsToRun;
		xAxisIsDate: true; 
		canonizeXAxis;
		yourself