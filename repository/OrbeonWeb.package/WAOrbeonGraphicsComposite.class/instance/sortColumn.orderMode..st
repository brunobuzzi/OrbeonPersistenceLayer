other
sortColumn: sortBlock orderMode: orderMode

	formsBatchedList orderMode: orderMode.

	formsBatchedList items: ((orderMode = #asc) 
		ifTrue: [(formsBatchedList items asSortedCollection: sortBlock) reverse] 
		ifFalse: [formsBatchedList items asSortedCollection: sortBlock]).