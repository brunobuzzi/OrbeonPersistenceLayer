other
sortColumn: sortBlock orderMode: aSymbol

	collection :=  (aSymbol = #asc) ifTrue: [(collection asSortedCollection: sortBlock) reverse] ifFalse: [collection asSortedCollection: sortBlock].