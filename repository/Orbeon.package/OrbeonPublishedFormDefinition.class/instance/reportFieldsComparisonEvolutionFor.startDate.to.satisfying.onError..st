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
		sumSecondsToConstruct: secondsToRun;
		xAxisIsDate: true; 
		canonizeXAxis;
		yourself