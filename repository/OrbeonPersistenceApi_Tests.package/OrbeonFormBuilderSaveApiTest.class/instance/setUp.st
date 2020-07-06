other
setUp

	super setUp.

	apiOperation := OrbeonFormBuilderSaveApi newWithXml: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_simple_registration id: UUID new asString.
	apiOperation appName: 'st';
		formName: 'simple-registration'.