other
testDoItAndSetVersion
	| formInstance id xmlFormDefinition registerXmlDefinition |

	id := UUID new asString.
	formInstance := self createFormInstanceWithId: id.

	apiOperation id: id.

	xmlFormDefinition := apiOperation doItAndSetVersion: [:versionString | self assert: versionString equals: '1'].

	registerXmlDefinition := ((testRoot getExistingApplicationOrCreateNewNamed: 'agesic') definitionNamed: 'test-all-types-4' ifNone: [self assert: false]) xmlString.

	self assert: xmlFormDefinition equals: registerXmlDefinition