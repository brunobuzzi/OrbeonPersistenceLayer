other
setUp
	| definition |

	super setUp.

	definition := self createFormDefinition.
	formId := definition id.

	apiOperation := OrbeonSendFormDefinitionFileApi newWithId: formId.
	apiOperation fileId: fileId;
		appName: 'migration';
		formName: 'all-fields-types'.

	fileContents := '<this is a test>'