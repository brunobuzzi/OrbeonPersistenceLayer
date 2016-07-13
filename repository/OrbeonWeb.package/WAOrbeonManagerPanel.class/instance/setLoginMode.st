commands
setLoginMode

	selectedToolBarOption := 'login-mode'.

	arena ifNotNil: [arena answer: true].

	arena := FormOrbeonLoginModeComposite parent: self