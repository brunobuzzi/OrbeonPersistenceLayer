other
switchAvailable

	(self available = 'true') 
	ifTrue: [self unpublish.
		^self available: 'false'].

	self setAvailableNodeWith: 'true'.
	^self available: 'true'