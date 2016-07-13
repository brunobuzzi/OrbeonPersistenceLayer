other
searchEqual2
	| filterCollection fieldInstances |

	exportComponent := exportComponent ifNotNil: [exportComponent answer. nil].
	originalCollection isEmpty ifTrue: [^self].

	fieldInstances := originalCollection first definition fieldInstancesOf: selectedSearchField.

 	filterCollection := OrderedCollection new.

	fieldInstances := fieldInstances select: {:each | each.value = initialSearch}. "query using a SelectionBlock -Page 116 Prog Guide GS 3.1-"
	filterCollection addAll: (fieldInstances collect: [:each | each formName]).

	searchFields := Dictionary new.
 	collection := filterCollection asSet asArray.
 	batchedList items: collection.
	batchedList currentPage: 1.
	^collection