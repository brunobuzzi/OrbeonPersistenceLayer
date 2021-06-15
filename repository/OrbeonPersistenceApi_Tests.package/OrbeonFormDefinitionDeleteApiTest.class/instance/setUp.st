other
setUp

	super setUp.

	apiOperation := OrbeonFormDefinitionDeleteApi newOn: self systemRoot withId: ''.
	apiOperation appName: 'agesic'.