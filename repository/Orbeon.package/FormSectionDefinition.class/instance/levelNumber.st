other
levelNumber

	parentSection ifNil: [^1].

	^1 + (parentSection levelNumber)