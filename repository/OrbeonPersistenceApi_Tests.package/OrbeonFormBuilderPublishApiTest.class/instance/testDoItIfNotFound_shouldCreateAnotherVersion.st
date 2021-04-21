other
testDoItIfNotFound_shouldCreateAnotherVersion
	| latestSavedDefinition currentPublishedVersion newPublishedSameVersion match |

	apiOperation headerVersion: 'next'.
	apiOperation doItIfNotFound: [self assert: false].

	currentPublishedVersion := self getOrbeonApplicationClass formDefinitionNamed: apiOperation formName in: apiOperation appName.
	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].
	apiOperation xmlString: self newDefinitionTemplate formDefinition_st_simple_registration_2.
	latestSavedDefinition 
	ifNil: [apiOperation headerVersion: 'next'] 
	ifNotNil: [apiOperation headerVersion: latestSavedDefinition printVersion; id: latestSavedDefinition id]. 

	apiOperation doItIfNotFound: [self assert: false].

	newPublishedSameVersion := self getOrbeonApplicationClass formDefinitionNamed: apiOperation formName in: apiOperation appName.

	self deny: (currentPublishedVersion == newPublishedSameVersion).
	self assert: (currentPublishedVersion version = newPublishedSameVersion version).

	match := false.
	currentPublishedVersion currentVersionsDo: [:formDef | (formDef == newPublishedSameVersion) ifTrue: [match := true]].
	self assert: match.

	match := false.
	currentPublishedVersion oldVersionsDo: [:formDef | (formDef == currentPublishedVersion) ifTrue: [match := true]].
	self assert: match.