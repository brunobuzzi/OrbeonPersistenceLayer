stream
nextObject

	self atEnd ifTrue: [^nil].

	^currentStream next