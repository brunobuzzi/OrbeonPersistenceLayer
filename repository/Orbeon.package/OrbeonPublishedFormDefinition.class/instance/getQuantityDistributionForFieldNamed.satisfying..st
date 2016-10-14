distribution
getQuantityDistributionForFieldNamed: fieldName satisfying: formConditionBlock
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"

	^self getQuantityDistributionForFieldCollection: 
		((self fieldInstancesOf: fieldName) select: [:fieldInst | formConditionBlock value: fieldInst parentObject])