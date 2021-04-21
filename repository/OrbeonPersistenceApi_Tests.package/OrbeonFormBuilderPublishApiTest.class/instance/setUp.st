other
setUp

	super setUp.

	apiOperation := OrbeonFormBuilderPublishApi newWithXml: self newDefinitionTemplate formDefinition_st_simple_registration id: UUID new asString.
	apiOperation appName: 'st';
		formName: 'simple-registration'.

	saveApiOperation := OrbeonFormBuilderSaveApi newWithXml: self newDefinitionTemplate formDefinition_st_simple_registration id: apiOperation id.
	saveApiOperation appName: 'st';
		formName: 'simple-registration';
		doIt.