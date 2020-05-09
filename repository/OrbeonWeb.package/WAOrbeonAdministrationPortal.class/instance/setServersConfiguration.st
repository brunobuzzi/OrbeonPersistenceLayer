other
setServersConfiguration

	^(arena class == WAOrbeonServerConfigurationComposite) 
	ifTrue: [arena]
	ifFalse: [WAOrbeonServerConfigurationComposite parent: self]