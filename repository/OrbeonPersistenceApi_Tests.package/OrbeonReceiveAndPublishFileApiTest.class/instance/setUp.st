other
setUp

	super setUp.

	apiOperation := OrbeonReceiveAndPublishFileApi newWithId: formId.
	apiOperation fileId: fileId;
		fileContents: 'This is a test';
		appName: 'test';
		formName: 'test'.