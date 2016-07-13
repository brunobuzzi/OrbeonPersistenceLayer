other
searchByRange
	| filterCollection |

	exportComponent := exportComponent ifNotNil: [exportComponent answer. nil].

	filterCollection := OrderedCollection new.

	filterCollection addAll: (originalCollection select: [:each | 
			(Number readFrom: initialSearch) <=  (each valueAt: selectedSearchField)
				and:[(each valueAt: selectedSearchField) <=  (Number readFrom: endSearch)]]).

	searchFields := Dictionary new.
	collection := filterCollection asSet asOrderedCollection.
	batchedList items: collection asArray.
	^collection