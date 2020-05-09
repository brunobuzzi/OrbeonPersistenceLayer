other
viewGraphics

	^(arena class == WAOrbeonGraphicsComposite) 
	ifTrue: [arena]
	ifFalse: [WAOrbeonGraphicsComposite parent: self]