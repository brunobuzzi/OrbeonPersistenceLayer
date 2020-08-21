other
setUp

	super setUp.

	apiOperation := OrbeonFormDraftDeleteApi newWithId: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.