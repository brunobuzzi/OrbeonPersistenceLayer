other
testDoItIfNotFound_newVersion
	| latestSavedDefinition newLatestSavedDefinition|
 
	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].
	apiOperation headerVersion: 'next';
		id: latestSavedDefinition id.

	apiOperation doItIfNotFound: [self assert: false].

	newLatestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].

	latestSavedDefinition 
	ifNil: [self assert: (newLatestSavedDefinition version = 1)]
	ifNotNil: [self assert: (latestSavedDefinition version + 1 = newLatestSavedDefinition version)].

	self assert: (newLatestSavedDefinition xmlString = newLatestSavedDefinition definition xmlString).
	self deny: (latestSavedDefinition == newLatestSavedDefinition).