commands
serversConfiguration

	selectedToolBarOption := 'servers-configuration'.
	arena ifNotNil: [arena answer: true].
	arena := FormOrbeonServerConfigurationComposite parent: self.