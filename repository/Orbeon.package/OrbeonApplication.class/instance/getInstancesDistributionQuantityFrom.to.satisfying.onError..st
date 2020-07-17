distribution
getInstancesDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	"Answer aDictionary where each key is the name of the form definition and value is the number of instances of that form"
	| distribution total orderedQuantity |

	distribution := Dictionary new.
	orderedQuantity := OrderPreservingDictionary new.
	total := 0.

	definitionsRegistry keysAndValuesDo: [:formName :registry | 
		distribution at: formName put: (registry getInstancesDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler)].

	distribution "asSortedCollection reverse" do: [:dictionary | | key |
		key := distribution keyAtValue: dictionary ifAbsent: [].
		orderedQuantity at: key put: dictionary asSortedCollection sum.
		distribution removeKey: key ifAbsent: [].
		
	].

	^orderedQuantity