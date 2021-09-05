other
setUp

	super setUp.

	apiOperation := OrbeonFormBuilderSaveApi newOn: testRoot withXml: testRoot newDefinitionTemplate formDefinition_st_simple_registration id: UUID new asString.
	apiOperation appName: 'st';
		formName: 'simple-registration'.