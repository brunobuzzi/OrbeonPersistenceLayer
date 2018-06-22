publish
switchAvailable

	self isAvailable
	ifTrue: [self setAvailableNodeWith: 'false'.
		^self isAvailable: false].

	self setAvailableNodeWith: 'true'.
	^self isAvailable: true