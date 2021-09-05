other
testDoItIfNotFound_shouldCreateAnotherVersion
	| latestSavedDefinition currentPublishedVersion newPublishedSameVersion match |

	apiOperation headerVersion: 'next'.
	apiOperation doItIfNotFound: [self assert: false].

	currentPublishedVersion := testRoot formDefinitionNamed: apiOperation formName in: apiOperation appName.
	latestSavedDefinition := testRoot getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].
	apiOperation xmlString: testRoot newDefinitionTemplate formDefinition_st_simple_registration_2.
	latestSavedDefinition 
	ifNil: [apiOperation headerVersion: 'next'] 
	ifNotNil: [apiOperation headerVersion: latestSavedDefinition printVersion; id: latestSavedDefinition id]. 

	apiOperation doItIfNotFound: [self assert: false].

	newPublishedSameVersion := testRoot formDefinitionNamed: apiOperation formName in: apiOperation appName.

	self deny: (currentPublishedVersion == newPublishedSameVersion).
	self assert: (currentPublishedVersion version = newPublishedSameVersion version).

	match := false.
	currentPublishedVersion currentVersionsDo: [:formDef | (formDef == newPublishedSameVersion) ifTrue: [match := true]].
	self assert: match.

	match := false.
	currentPublishedVersion oldVersionsDo: [:formDef | (formDef == currentPublishedVersion) ifTrue: [match := true]].
	self assert: match.