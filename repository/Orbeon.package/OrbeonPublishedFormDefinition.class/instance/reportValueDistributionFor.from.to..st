distribution report
reportValueDistributionFor: fieldName from: startDate to: endDate
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| secondsToRun dateFilteredCollection |

	secondsToRun := Time secondsElapsedTime: [dateFilteredCollection := (self fieldInstancesOf: fieldName) select: [:each | startDate <= each parentObject createdTime and: (each parentObject createdTime <= endDate)]].

	^(self reportValueDistributionForFieldCollection: dateFilteredCollection)
		startDate: startDate;
		endDate: endDate;
		sumSecondsToConstruct: secondsToRun;
		yourself