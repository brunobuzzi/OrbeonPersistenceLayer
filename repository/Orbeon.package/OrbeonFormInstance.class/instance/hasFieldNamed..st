other
hasFieldNamed: aSymbol
	"Answer whether or not the receiver has a field named <aSymbol>"

	^(self getFields includesKey: aSymbol asString) 
		or: [self getAllGrids anySatisfy: [:each | each includesKey: aSymbol asString] ]