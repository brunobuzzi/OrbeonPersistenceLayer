other
viewGraphicsReports

	^(arena class == WAOrbeonSavedChartsComposite) 
	ifTrue: [arena]
	ifFalse: [WAOrbeonSavedChartsComposite parent: self]