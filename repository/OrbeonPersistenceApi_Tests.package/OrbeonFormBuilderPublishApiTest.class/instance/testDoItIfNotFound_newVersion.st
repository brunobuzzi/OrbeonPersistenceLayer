other
testDoItIfNotFound_newVersion
	| latestSavedDefinition newLatestSavedDefinition|

	latestSavedDefinition := testRoot getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [].
	apiOperation headerVersion: 'next'.
	latestSavedDefinition ifNotNil: [apiOperation id: latestSavedDefinition id].

	apiOperation doItIfNotFound: [self assert: false]. "version 1"

	apiOperation := OrbeonFormBuilderSaveApi newOn: self systemRoot withXml: self newDefinitionTemplate formDefinition_st_simple_registration_2 id: latestSavedDefinition id.
	apiOperation appName: 'st';
		formName: 'simple-registration'.
	apiOperation doIt. "version 2"

	apiOperation := OrbeonFormBuilderPublishApi newOn: self systemRoot withXml: self newDefinitionTemplate formDefinition_st_simple_registration_2 id: latestSavedDefinition id.
	apiOperation appName: 'st';
		formName: 'simple-registration';
		headerVersion: 'next'.
	apiOperation doItIfNotFound: [self assert: false]. "version 2"

	newLatestSavedDefinition := testRoot getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [].

	self assert: ((latestSavedDefinition version + 1) = newLatestSavedDefinition version).

	self assert: (newLatestSavedDefinition xmlString = newLatestSavedDefinition definition xmlString).
	self deny: (latestSavedDefinition == newLatestSavedDefinition).