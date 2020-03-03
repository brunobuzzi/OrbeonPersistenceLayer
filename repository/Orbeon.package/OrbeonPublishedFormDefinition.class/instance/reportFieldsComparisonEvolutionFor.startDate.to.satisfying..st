distribution report
reportFieldsComparisonEvolutionFor: fieldCollection startDate: startDate to: endDate satisfying: formConditionBlock
	| distributionCollection secondsToRun |

	distributionCollection := OrderedCollection new.
	secondsToRun := Time secondsElapsedTime: [
		fieldCollection do: [:each | | distributionReport |
			distributionReport := self reportFieldEvolutionFor: each startDate: startDate to: endDate satisfying: formConditionBlock.
			distributionReport seriesName: each.
			distributionCollection add: distributionReport.
		].
	].

	^(OrbeonFieldComparisonDistributionReport applicationName: self applicationName formName: formName version: self version fieldName: 'all' distribution: distributionCollection)
		fieldDistributions: distributionCollection;
		sumSecondsToConstruct: secondsToRun;
		yourself