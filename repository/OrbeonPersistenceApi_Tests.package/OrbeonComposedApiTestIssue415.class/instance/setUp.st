setUp
setUp
	| libApi savedLibApi definitionApi savedApi |

	super setUp.

	savedLibApi := OrbeonFormBuilderSaveApi newOn: testRoot withXml: testRoot newDefinitionTemplate formDefinition_emb_library id: UUID new asString.
	savedLibApi appName: 'emb';
		formName: 'library'. 
	self storeApi: savedLibApi named: 'savedLibrary'.

	libApi := OrbeonFormBuilderPublishApi newOn: testRoot withXml: testRoot newDefinitionTemplate formDefinition_emb_library id: savedLibApi id.
	libApi appName: 'emb';
		formName: 'library';
		headerVersion: 'next'. 
	self storeApi: libApi named: 'library'.

	savedApi := OrbeonFormBuilderSaveApi newOn: testRoot withXml: testRoot newDefinitionTemplate formSavedDefinition_emb_registration id: UUID new asString.
	savedApi appName: 'emb';
		formName: 'registration'.
	self storeApi: savedApi named: 'savedDefinition'.

	definitionApi := OrbeonFormBuilderPublishApi newOn: testRoot withXml: testRoot newDefinitionTemplate formDefinition_emb_registration id: savedApi id.
	definitionApi appName: 'emb';
		formName: 'registration';
		headerVersion: 'next'.
	self storeApi: definitionApi named: 'formDefinition'.