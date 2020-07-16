other
setUp

	super setUp.

	apiOperation := OrbeonFormDefinitionDuplicateApi newWithId: UUID new asString.
	apiOperation appName: 'ue'.