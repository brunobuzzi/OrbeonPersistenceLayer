other
sortColumn: sortBlock orderMode: aSymbol

	innerBatchList items: ( (aSymbol = #asc) 
		ifTrue: [(innerBatchList items asSortedCollection: sortBlock) reverse] 
		ifFalse: [innerBatchList items asSortedCollection: sortBlock]).