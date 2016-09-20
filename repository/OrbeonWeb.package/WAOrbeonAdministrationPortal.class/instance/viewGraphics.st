other
viewGraphics

	^(arena class == OrbeonGraphicsComposite)
	ifTrue: [arena]
	ifFalse: [OrbeonGraphicsComposite parent: self]