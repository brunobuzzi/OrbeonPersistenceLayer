other
setUp

	super setUp.

	apiOperation := OrbeonFormInstanceDeleteApi newOn: self systemRoot withId: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.