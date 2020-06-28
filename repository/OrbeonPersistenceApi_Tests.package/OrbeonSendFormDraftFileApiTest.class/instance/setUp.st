other
setUp

	super setUp.

	apiOperation := OrbeonSendFormDraftFileApi newWithId: formId.
	apiOperation fileId: fileId;
		appName: 'test';
		formName: 'test'.

	fileContents := '<this is a test>'