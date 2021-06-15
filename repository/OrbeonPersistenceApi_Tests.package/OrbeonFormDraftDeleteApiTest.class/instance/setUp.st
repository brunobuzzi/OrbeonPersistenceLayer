other
setUp

	super setUp.

	apiOperation := OrbeonFormDraftDeleteApi newOn: self systemRoot withId: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.