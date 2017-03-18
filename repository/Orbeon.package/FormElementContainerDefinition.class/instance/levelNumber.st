parent section
levelNumber

	self parentSection ifNil: [^1].

	^1 + (self parentSection levelNumber)