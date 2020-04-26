other
reportFieldsComparisonEvolutionFor: fieldsDictionary startDate: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	"Answer a Report to compare all fields contained in <Dictionary> <fieldsDictionary> where the key is <anOrbeonPublishedFormDefinition> and the value is a collection of fields names"
	| distributionCollection secondsToRun |

	distributionCollection := OrderedCollection new.
	secondsToRun := Time secondsElapsedTime: [
		fieldsDictionary keysAndValuesDo: [:definition :collectionOfFields | | distributionReport |
			collectionOfFields do: [:fieldName | 
				distributionReport := definition reportFieldEvolutionFor: fieldName startDate: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.
				distributionReport xAxisIsDate: true.
				distributionReport seriesName: (definition formName, '.', fieldName).
				distributionCollection add: distributionReport.
			].
		].
	].

	^(OrbeonFieldComparisonDistributionReport distribution: distributionCollection)
		sumSecondsToConstruct: secondsToRun;
		xAxisIsDate: true; 
		canonizeXAxis;
		yourself