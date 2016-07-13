other
searchEqual
 	| filterCollection |
 
	exportComponent := exportComponent ifNotNil: [exportComponent answer. nil].

 	batchedList items isEmpty ifTrue: [^self].
 
 	filterCollection := OrderedCollection new.
 
 	filterCollection addAll: (batchedList items select: [:each | initialSearch match: (each valueAt: selectedSearchField)]).
 
 	searchFields := Dictionary new.
 	collection := filterCollection asSet asOrderedCollection.
 	batchedList items: collection asArray.
 	^collection