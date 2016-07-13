other
viewOrbeonApplications

	^(arena class == WAOrbeonApplicationsComposite)
	ifTrue: [arena]
	ifFalse: [WAOrbeonApplicationsComposite parent: self]