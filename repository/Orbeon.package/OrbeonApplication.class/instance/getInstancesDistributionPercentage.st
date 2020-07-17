distribution
getInstancesDistributionPercentage
	"Answer aDictionary where each key is the name of the form definition and value is the number of instances of that form"
	| distribution total orderedPercentage |

	distribution := Dictionary new.
	orderedPercentage := OrderPreservingDictionary new.
	total := 0.

	definitionsRegistry keysAndValuesDo: [:formName :registry | 
		distribution at: formName put: registry getAllInstancesSize.
		total := total + (distribution at: formName)].

	distribution keysAndValuesDo: [:formName :value |  | instanceNumber |
		instanceNumber := value * 100 / total.
		distribution at: formName put: instanceNumber.
	].

	distribution asSortedCollection reverse do: [:each | | key |
		key := distribution keyAtValue: each ifAbsent: [].
		orderedPercentage at: key put: each.
		distribution removeKey: key ifAbsent: [].
		
	].

	^orderedPercentage