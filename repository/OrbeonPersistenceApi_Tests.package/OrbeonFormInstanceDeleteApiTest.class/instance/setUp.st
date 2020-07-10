other
setUp

	super setUp.

	apiOperation := OrbeonFormInstanceDeleteApi newWithId: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.