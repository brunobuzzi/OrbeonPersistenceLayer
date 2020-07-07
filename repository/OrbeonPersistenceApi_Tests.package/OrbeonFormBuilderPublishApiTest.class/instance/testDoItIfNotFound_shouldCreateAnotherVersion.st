other
testDoItIfNotFound_shouldCreateAnotherVersion
	| latestSavedDefinition currentPublishedVersion newPublishedSameVersion match |

	currentPublishedVersion := self getOrbeonApplicationClass formDefinitionNamed: apiOperation formName in: apiOperation appName.
	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].
	apiOperation xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_simple_registration_shouldCreateAnotherVersion.
	latestSavedDefinition 
	ifNil: [apiOperation headerVersion: '1'] 
	ifNotNil: [apiOperation headerVersion: latestSavedDefinition printVersion; id: latestSavedDefinition id]. 

	apiOperation doItIfNotFound: [self assert: false].

	newPublishedSameVersion := self getOrbeonApplicationClass formDefinitionNamed: apiOperation formName in: apiOperation appName.

	self deny: (currentPublishedVersion == newPublishedSameVersion).
	self assert: (currentPublishedVersion version = newPublishedSameVersion version).
	self assert: (currentPublishedVersion registry == newPublishedSameVersion registry).

	match := false.
	currentPublishedVersion currentVersionsDo: [:formDef | (formDef == newPublishedSameVersion) ifTrue: [match := true]].
	self assert: match.

	match := false.
	currentPublishedVersion oldVersionsDo: [:formDef | (formDef == currentPublishedVersion) ifTrue: [match := true]].
	self assert: match.