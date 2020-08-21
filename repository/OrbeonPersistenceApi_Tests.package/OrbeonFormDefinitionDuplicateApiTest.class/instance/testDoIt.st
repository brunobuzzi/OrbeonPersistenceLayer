other
testDoIt
	| application registry |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	apiOperation doIt.

	registry := application clonedRegistryWithId: apiOperation id ifNone: [self assert: false].

	self assert: registry getLastSavedDefinition id equals: apiOperation id.
	self assert: registry  savedDefinitionsSize equals: 1.

	apiOperation id: UUID new asString.
	apiOperation doIt.

	registry := application clonedRegistryWithId: apiOperation id ifNone: [self assert: false].

	self assert: registry getLastSavedDefinition id equals: apiOperation id.
	self assert: registry  savedDefinitionsSize equals: 1.