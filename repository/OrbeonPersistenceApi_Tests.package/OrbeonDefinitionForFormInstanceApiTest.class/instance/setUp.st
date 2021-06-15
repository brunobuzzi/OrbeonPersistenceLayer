other
setUp

	super setUp.

	apiOperation := OrbeonDefinitionForFormInstanceApi newOn: self systemRoot withId: ''.
	apiOperation appName: 'agesic';
		formName: 'test-all-types-4'.