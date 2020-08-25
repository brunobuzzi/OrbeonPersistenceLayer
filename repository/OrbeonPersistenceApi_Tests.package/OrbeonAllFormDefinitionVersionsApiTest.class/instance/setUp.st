other
setUp

	super setUp.

	apiOperation := OrbeonAllFormDefinitionVersionsApi new.
	apiOperation appName: 'agesic';
		formName: 'test-all-types-4';
		allversions: false;
		allforms: false.