other
setUp

	super setUp.

	apiOperation := OrbeonSendFormInstanceFileApi newOn: testRoot withId: formId.
	apiOperation fileId: fileId;
		appName: 'test';
		formName: 'test'.

	fileContents := '<this is a test>'