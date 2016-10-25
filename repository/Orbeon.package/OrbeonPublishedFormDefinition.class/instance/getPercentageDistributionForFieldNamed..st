distribution by fields
getPercentageDistributionForFieldNamed: fieldName
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| distributionValue distributionPercentage totalValue |

	distributionValue := self getQuantityDistributionForFieldNamed: fieldName.

	totalValue := distributionValue inject: 0 into: [:sum :each | sum + each].

	distributionValue keysAndValuesDo: [:key :value | 
		distributionPercentage at: key put: (100 * value // totalValue).
	]. 

	^distributionPercentage