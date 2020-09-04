other
setUp

	super setUp.

	apiOperation := OrbeonDefinitionForFormInstanceApi newWithId: ''.
	apiOperation appName: 'agesic';
		formName: 'test-all-types-4'.