other
setUp

	super setUp.

	apiOperation := OrbeonSendFormInstanceFileApi newWithId: formId.
	apiOperation fileId: fileId;
		appName: 'test';
		formName: 'test'.

	fileContents := '<this is a test>'