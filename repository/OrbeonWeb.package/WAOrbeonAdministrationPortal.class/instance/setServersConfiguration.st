other
setServersConfiguration

	^(arena class == FormOrbeonServerConfigurationComposite) 
	ifTrue: [arena]
	ifFalse: [FormOrbeonServerConfigurationComposite parent: self]