other
setUp

	super setUp.

	saveApiOperation := OrbeonFormBuilderSaveApi newOn: self systemRoot withXml: self newDefinitionTemplate formDefinition_st_simple_registration id: UUID new asString.
	saveApiOperation appName: 'st';
		formName: 'simple-registration';
		doIt.

	apiOperation := OrbeonFormBuilderPublishApi newOn: self systemRoot withXml: self newDefinitionTemplate formDefinition_st_simple_registration id: saveApiOperation id.
	apiOperation appName: 'st';
		formName: 'simple-registration'.