other
testDoItIfNotFound_updateVersion
	| latestSavedDefinition newLatestSavedDefinition|
 
	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].
	latestSavedDefinition 
	ifNil: [apiOperation headerVersion: latestSavedDefinition version printString;id: latestSavedDefinition id] 
	ifNotNil: [apiOperation headerVersion: '1'].
	
	apiOperation doItIfNotFound: [self assert: false].

	newLatestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].

	latestSavedDefinition 
	ifNil: [self assert: (newLatestSavedDefinition version = 1)]
	ifNotNil: [self assert: (latestSavedDefinition version = newLatestSavedDefinition version)].

	self assert: (newLatestSavedDefinition xmlString = newLatestSavedDefinition definition xmlString).
	self deny: (latestSavedDefinition == newLatestSavedDefinition).