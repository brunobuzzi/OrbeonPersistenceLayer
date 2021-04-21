other
setUp

	super setUp.

	self createFormDefinition.

	apiOperation := OrbeonFormDefinitionDuplicateApi newWithXml: self newDefinitionTemplate formDefinition_agesic_test_2 id: UUID new asString.