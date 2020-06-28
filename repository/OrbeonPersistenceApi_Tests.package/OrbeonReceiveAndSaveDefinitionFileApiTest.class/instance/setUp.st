other
setUp

	super setUp.

	apiOperation := OrbeonReceiveAndSaveDefinitionFileApi newWithId: formId.
	apiOperation fileId: fileId;
		fileContents: 'This is a test';
		appName: 'test';
		formName: 'test'.