other
viewGraphics

	^(arena class == OrbeonGraphicsComposite2) 
	ifTrue: [arena]
	ifFalse: [OrbeonGraphicsComposite2 parent: self]