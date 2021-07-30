other
setUp

	super setUp.

	self createFormDefinition.

	apiOperation := OrbeonFormDefinitionDuplicateApi newOn: testRoot withXml: self newDefinitionTemplate formDefinition_agesic_test_2 id: UUID new asString.