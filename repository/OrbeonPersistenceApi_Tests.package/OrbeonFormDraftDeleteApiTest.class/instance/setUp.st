other
setUp

	super setUp.

	apiOperation := OrbeonFormDraftDeleteApi newOn: testRoot withId: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.