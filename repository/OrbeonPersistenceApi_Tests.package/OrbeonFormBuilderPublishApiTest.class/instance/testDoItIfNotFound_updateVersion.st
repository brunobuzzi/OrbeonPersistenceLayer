other
testDoItIfNotFound_updateVersion
	| latestSavedDefinition newLatestSavedDefinition saveApi |
 
	apiOperation headerVersion: 'next'.
	apiOperation doItIfNotFound: [self assert: false].

	latestSavedDefinition := testRoot getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].
	latestSavedDefinition 
	ifNil: [apiOperation headerVersion: 'next'] 
	ifNotNil: [apiOperation headerVersion: latestSavedDefinition version printString;id: latestSavedDefinition id].

	saveApi := OrbeonFormBuilderSaveApi newOn: testRoot withXml: self newDefinitionTemplate formDefinition_st_simple_registration id: latestSavedDefinition id.
	saveApi appName: 'st';
		formName: 'simple-registration'.
	saveApi doIt.
	
	apiOperation doItIfNotFound: [self assert: false].

	newLatestSavedDefinition := testRoot getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].

	latestSavedDefinition 
	ifNil: [self assert: (newLatestSavedDefinition version = 1)]
	ifNotNil: [self assert: (latestSavedDefinition version = newLatestSavedDefinition version)].

	self assert: (newLatestSavedDefinition xmlString = newLatestSavedDefinition definition xmlString).
	self deny: (latestSavedDefinition == newLatestSavedDefinition).