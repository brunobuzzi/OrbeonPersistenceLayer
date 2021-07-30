other
setUp

	super setUp.

	apiOperation := OrbeonFormInstanceDeleteApi newOn: testRoot withId: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.