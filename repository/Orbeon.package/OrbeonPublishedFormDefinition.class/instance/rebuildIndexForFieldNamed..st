indexes
rebuildIndexForFieldNamed: aString
	"The receiver rebuild (remove and create) the index for field named <aString>.
	If an error occur then do nothing"

	^self rebuildIndexForFieldNamed: aString onError: []