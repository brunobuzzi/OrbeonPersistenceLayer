distribution by fields
getQuantityDistributionForFieldNamed: fieldName satisfying: formConditionBlock
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| blockFilteredCollection |

	blockFilteredCollection := (self fieldInstancesOf: fieldName) select: [:fieldInst | formConditionBlock value: fieldInst parentObject].

	^self getValueDistributionForFieldCollection: blockFilteredCollection