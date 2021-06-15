other
setUp
	| definition |

	super setUp.

	definition := self createFormDefinition.
	formId := definition id.

	apiOperation := OrbeonSendCustomPdfFileApi newOn: self systemRoot withId: formId.
	apiOperation fileId: fileId;
		appName: 'migration';
		formName: 'all-fields-types'.

	fileContents := '<this is a test>'