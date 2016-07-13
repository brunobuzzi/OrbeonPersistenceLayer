other
getAllValuesFor: fieldName
	"The receiver answer a collection with all values in all iterations for field named <fieldName>"
	| values |

	values := OrderedCollection new.

	gridIterations do: [:eachDictionary | | value |
		value := eachDictionary at: fieldName ifAbsent: [GridValueNotFoundException signal: 'Values not found for [', fieldName, ']'].
		values add: value].

	^values