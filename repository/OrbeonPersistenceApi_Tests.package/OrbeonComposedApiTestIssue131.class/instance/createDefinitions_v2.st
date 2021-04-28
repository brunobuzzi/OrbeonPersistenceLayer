setUp
createDefinitions_v2
	| libApi savedLibApi definitionApi savedApi |

	savedLibApi := OrbeonFormBuilderSaveApi newWithXml: self newDefinitionTemplate formDefinition_emb_library_v2 id: (self apiNamed: 'library') id.
	savedLibApi appName: 'emb';
		formName: 'library'. 
	self storeApi: savedLibApi named: 'savedLibrary_v2'.

	libApi := OrbeonFormBuilderPublishApi newWithXml: self newDefinitionTemplate formDefinition_emb_library_v2 id: (self apiNamed: 'library') id.
	libApi appName: 'emb';
		formName: 'library';
		headerVersion: 'next'. 
	self storeApi: libApi named: 'library_v2'.

	savedApi := OrbeonFormBuilderSaveApi newWithXml: self newDefinitionTemplate formSavedDefinition_emb_registration_v2 id: (self apiNamed: 'formDefinition') id.
	savedApi appName: 'emb';
		formName: 'registration'.
	self storeApi: savedApi named: 'savedDefinition_v2'.

	definitionApi := OrbeonFormBuilderPublishApi newWithXml: self newDefinitionTemplate formSavedDefinition_emb_registration_v2 id: (self apiNamed: 'formDefinition') id.
	definitionApi appName: 'emb';
		formName: 'registration';
		headerVersion: 'next'.
	self storeApi: definitionApi named: 'formDefinition_v2'.