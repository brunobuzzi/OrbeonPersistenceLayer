other
setUp

	super setUp.

	apiOperation := OrbeonDefinitionForFormInstanceApi newOn: testRoot withId: ''.
	apiOperation appName: 'agesic';
		formName: 'test-all-types-4'.