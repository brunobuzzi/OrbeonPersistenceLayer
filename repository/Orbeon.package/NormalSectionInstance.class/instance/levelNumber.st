other
levelNumber

	parentSection ifNil: [^1].

	parentSection isRepeatable ifTrue: [^0 + (parentSection levelNumber)].

	^1 + (parentSection levelNumber)