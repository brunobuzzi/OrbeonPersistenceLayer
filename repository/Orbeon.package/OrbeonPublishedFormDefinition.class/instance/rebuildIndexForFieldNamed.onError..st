indexes
rebuildIndexForFieldNamed: aString onError: errorBlock
	"The receiver rebuild (remove and create) the index for field named <aString>.
	If an error occur then evaluates the niladic block <errorBlock>"

	[self removeIndexForFieldNamed: aString.
	self createIndexForFieldNamed: aString] on: Error do: [:ex | ^errorBlock value].