other
setUp

	super setUp.

	apiOperation := OrbeonReceiveAndSaveDraftFileApi newOn: testRoot withId: formId.
	apiOperation fileId: fileId;
		fileContents: 'This is a test';
		appName: 'test';
		formName: 'test'.