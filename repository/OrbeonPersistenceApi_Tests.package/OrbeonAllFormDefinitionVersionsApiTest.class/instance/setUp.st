other
setUp

	super setUp.

	apiOperation := OrbeonAllFormDefinitionVersionsApi newOn: testRoot.
	apiOperation appName: 'agesic';
		formName: 'test-all-types-4';
		allversions: 'false';
		allforms: 'false'.