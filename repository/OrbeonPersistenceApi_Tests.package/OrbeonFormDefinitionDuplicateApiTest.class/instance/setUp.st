other
setUp

	super setUp.

	self createFormDefinition.

	apiOperation := OrbeonFormDefinitionDuplicateApi newWithXml: OrbeonFormDefinitionTemplateUpTo2017_1 form_test_2 id: UUID new asString.