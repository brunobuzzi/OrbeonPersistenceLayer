other
testDoItIfNotFound_moveForm
	| application latestSavedDefinition |
 
	apiOperation headerVersion: 'next'.
	apiOperation doItIfNotFound: [self assert: false].

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: apiOperation appName.
	(application registryForFormNamed: apiOperation formName) currentVersionsDo: [:definition | self assert: (definition formName = 'simple-registration')].
	(application registryForFormNamed: apiOperation formName) oldVersionsDo: [:definition | self assert: (definition formName = 'simple-registration')].

	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [].
	latestSavedDefinition ifNil: [apiOperation headerVersion: 'next'] ifNotNil: [apiOperation headerVersion: latestSavedDefinition printVersion; id: latestSavedDefinition id]. 

	apiOperation formName: 'simple-registration-2'.

	apiOperation doItIfNotFound: [self assert: false].

	(application registryForFormNamed: apiOperation formName) currentVersionsDo: [:definition | self assert: (definition formName = 'simple-registration-2')].
	(application registryForFormNamed: apiOperation formName) oldVersionsDo: [:definition | self assert: (definition formName = 'simple-registration-2')].

	"now we move everything back again if not others tests will fail"
	self setUp.
	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: 'simple-registration-2' app: apiOperation appName ifNone: [nil].
	apiOperation headerVersion: latestSavedDefinition version printString;
		id: latestSavedDefinition id;
		formName: 'simple-registration'.

	apiOperation doItIfNotFound: [self assert: false].

	(application registryForFormNamed: apiOperation formName) currentVersionsDo: [:definition | self assert: (definition formName = 'simple-registration')].
	(application registryForFormNamed: apiOperation formName) oldVersionsDo: [:definition | self assert: (definition formName = 'simple-registration')].