distribution report
reportValueDistributionFor: fieldName from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| secondsToRun filteredCollection |

	secondsToRun := Time secondsElapsedTime: [
									filteredCollection := (self fieldInstancesOf: fieldName) 
											select: [:fieldInst | (startDate <= fieldInst parentObject createdTime) 
																	and: [(fieldInst parentObject createdTime <= endDate)
																and: [formConditionBlock value: fieldInst parentObject]]
											]
							].

	^(self reportValueDistributionForFieldCollection: filteredCollection)
		startDate: startDate;
		endDate: endDate;
		conditionStringBlock: formConditionBlock blockSource;
		sumSecondsToConstruct: secondsToRun;
		yourself