other
setUp

	super setUp.

	apiOperation := OrbeonFormBuilderSaveApi newWithXml: self newDefinitionTemplate formDefinition_st_simple_registration id: UUID new asString.
	apiOperation appName: 'st';
		formName: 'simple-registration'.