other
testIssue_354
	| newPublishedSameVersion |

	apiOperation headerVersion: 'next'.
	apiOperation doItIfNotFound: [self assert: false].
	newPublishedSameVersion := self getOrbeonApplicationClass formDefinitionNamed: apiOperation formName in: apiOperation appName.
	self assert: newPublishedSameVersion isAvailable equals: newPublishedSameVersion definition isAvailable.

	apiOperation headerVersion: '1'.
	apiOperation doItIfNotFound: [self assert: false].
	newPublishedSameVersion := self getOrbeonApplicationClass formDefinitionNamed: apiOperation formName in: apiOperation appName.
	self assert: newPublishedSameVersion isAvailable equals: newPublishedSameVersion definition isAvailable.
	self assert: newPublishedSameVersion == newPublishedSameVersion definition definition.
	self assert: newPublishedSameVersion definition == newPublishedSameVersion definition definition definition.