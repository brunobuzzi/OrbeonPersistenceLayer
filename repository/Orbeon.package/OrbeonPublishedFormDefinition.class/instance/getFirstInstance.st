form instances
getFirstInstance

	instances isEmpty ifTrue: [^nil].

	^self getInstanceWithId: instances keys asOrderedCollection first