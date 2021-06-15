other
setUp

	super setUp.

	apiOperation := OrbeonSendFormDraftFileApi newOn: self systemRoot withId: formId.
	apiOperation fileId: fileId;
		appName: 'test';
		formName: 'test'.

	fileContents := '<this is a test>'