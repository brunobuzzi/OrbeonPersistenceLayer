other
getInstancesDistributionQuantity
	"Answer aDictionary where each key is the name of the form definition and value is the number of instances of that form"
	| distribution total orderedQuantity |

	distribution := Dictionary new.
	orderedQuantity := OrderPreservingDictionary new.
	total := 0.

	definitionRegistry keysAndValuesDo: [:formName :registry | 
		distribution at: formName put: registry getAllInstancesSize].

	distribution asSortedCollection reverse do: [:each | | key |
		key := distribution keyAtValue: each ifAbsent: [].
		orderedQuantity at: key put: each.
		distribution removeKey: key ifAbsent: [].
		
	].

	^orderedQuantity