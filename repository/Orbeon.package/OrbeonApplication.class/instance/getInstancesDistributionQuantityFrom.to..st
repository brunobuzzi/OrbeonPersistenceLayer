distribution
getInstancesDistributionQuantityFrom: startDate to: endDate
	"Answer aDictionary where each key is the name of the form definition and value is the number of instances of that form"
	| distribution orderedQuantity |

	distribution := Dictionary new.
	orderedQuantity := OrderPreservingDictionary new.

	definitionsRegistry keysAndValuesDo: [:formName :registry | | registryDistribution total |
		registryDistribution := registry getInstancesDistributionQuantityFrom: startDate to: endDate."answer a dictionary key->value"
		total := registryDistribution inject: 0 into: [:sum :each | sum + each].
		distribution at: formName put: total].

	distribution asSortedCollection reverse do: [:each | | key |
		key := distribution keyAtValue: each ifAbsent: [].
		orderedQuantity at: key put: each.
		distribution removeKey: key ifAbsent: [].
		
	].

	^orderedQuantity