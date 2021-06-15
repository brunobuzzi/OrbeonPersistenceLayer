other
setUp

	super setUp.

	apiOperation := OrbeonReceiveAndSaveDefinitionFileApi newOn: self systemRoot withId: formId.
	apiOperation fileId: fileId;
		fileContents: 'This is a test';
		appName: 'test';
		formName: 'test'.