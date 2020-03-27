distribution by fields
getQuantityDistributionForFieldNamed: fieldName from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| dateFilteredCollection |

	dateFilteredCollection := (self fieldInstancesOf: fieldName) select: [:each | ((startDate <= each parentObject createdTime) and: 
																										[(each parentObject createdTime <= endDate)]) and:
																										[formConditionBlock asApplicationBlock value: each parentObject onError: errorHandler]].

	^self getValueDistributionForFieldCollection: dateFilteredCollection