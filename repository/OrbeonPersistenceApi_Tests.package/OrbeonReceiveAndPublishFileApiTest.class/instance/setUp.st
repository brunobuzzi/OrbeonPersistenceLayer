other
setUp

	super setUp.

	apiOperation := OrbeonReceiveAndPublishFileApi newOn: testRoot withId: formId.
	apiOperation fileId: fileId;
		fileContents: 'This is a test';
		appName: 'test';
		formName: 'test'.