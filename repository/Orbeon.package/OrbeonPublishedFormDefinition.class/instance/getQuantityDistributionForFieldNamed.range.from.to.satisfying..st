distribution with range
getQuantityDistributionForFieldNamed: fieldName range: range from: startDate to: endDate satisfying: formConditionBlock
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole.
	Where the values of the fields are in the range <range>.
	Note: range value must be compatible with fields values "
	| fieldCollection |

	fieldCollection := (self fieldInstancesOf: fieldName) select: [:each | (startDate <= each parentObject createdTime 
																								and: [each parentObject createdTime <= endDate]) 
																									and: [formConditionBlock value: each parentObject]].

	^self getQuantityDistributionForFieldCollection: fieldCollection range: range