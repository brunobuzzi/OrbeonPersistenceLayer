other
setUp

	super setUp.

	apiOperation := OrbeonPublishedFormDefinitionSourceApi new.
	apiOperation appName: 'agesic';
		formName: 'test-all-types-4';
		headerVersionValue: '1';
		group: 'admin';
		user: 'admin';
		setUserCredentialsFrom: self jsonForTest.

	self createFormStructure.