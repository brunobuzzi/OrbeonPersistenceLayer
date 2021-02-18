other
setUp

	super setUp.

	apiOperation := OrbeonFormBuilderPublishApi newWithXml: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_simple_registration id: UUID new asString.
	apiOperation appName: 'st';
		formName: 'simple-registration'.

	saveApiOperation := OrbeonFormBuilderSaveApi newWithXml: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_simple_registration id: apiOperation id.
	saveApiOperation appName: 'st';
		formName: 'simple-registration';
		doIt.