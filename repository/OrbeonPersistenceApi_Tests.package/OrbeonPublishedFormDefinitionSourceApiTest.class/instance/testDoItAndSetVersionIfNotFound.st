other
testDoItAndSetVersionIfNotFound
	| definitionXml registerXmlDefinition |

	definitionXml := apiOperation doItAndSetVersion: [:versionString | self assert: versionString equals: '1'] ifNotFound: [self assert: false].

	registerXmlDefinition := ((self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic') definitionNamed: 'test-all-types-4' ifNone: [self assert: false]) xmlString.

	self assert: definitionXml equals: registerXmlDefinition