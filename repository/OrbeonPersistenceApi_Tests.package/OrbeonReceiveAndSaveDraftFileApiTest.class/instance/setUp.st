other
setUp

	super setUp.

	apiOperation := OrbeonReceiveAndSaveDraftFileApi newWithId: formId.
	apiOperation fileId: fileId;
		fileContents: 'This is a test';
		appName: 'test';
		formName: 'test'.