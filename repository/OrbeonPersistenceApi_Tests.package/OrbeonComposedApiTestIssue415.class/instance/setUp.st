setUp
setUp
	| libApi definitionApi |
	super setUp.


	libApi := OrbeonFormBuilderPublishApi newWithXml: self newDefinitionTemplate formDefinition_emb_library id: UUID new asString.
	libApi appName: 'emb';
		formName: 'library';
		headerVersion: 'next'. 
	self storeApi: libApi named: 'library'.

	definitionApi := OrbeonFormBuilderPublishApi newWithXml: self newDefinitionTemplate formDefinition_emb_registration id: UUID new asString.
	definitionApi appName: 'emb';
		formName: 'registration';
		headerVersion: 'next'.
	self storeApi: definitionApi named: 'formDefinition'.