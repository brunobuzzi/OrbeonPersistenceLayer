publish
switchAvailable

	self isAvailable
	ifTrue: [self unpublish.
		^self isAvailable: false].

	self setAvailableNodeWith: 'true'.
	^self isAvailable: true