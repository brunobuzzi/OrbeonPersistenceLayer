stream
nextObject
	"The receiver answer the next element <anOrbeonFormInstance> if none answer <nil>"

	self atEnd ifTrue: [^nil].

	^currentStream next