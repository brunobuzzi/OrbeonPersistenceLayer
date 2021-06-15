other
setUp

	super setUp.

	apiOperation := OrbeonFormBuilderSaveApi newOn: self systemRoot withXml: self newDefinitionTemplate formDefinition_st_simple_registration id: UUID new asString.
	apiOperation appName: 'st';
		formName: 'simple-registration'.