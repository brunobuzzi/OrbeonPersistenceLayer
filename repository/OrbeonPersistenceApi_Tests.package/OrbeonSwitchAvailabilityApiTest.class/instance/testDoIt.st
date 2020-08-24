other
testDoIt
	| application formDefinition |

	application := 	self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	formDefinition := application definitionNamed: 'test-all-types-4' ifNone: [self assert: false].

	self assert: formDefinition isAvailable.
	self assert: formDefinition newFormReader isAvailable.

	apiOperation doIt.

	self deny: formDefinition isAvailable.
	self deny: formDefinition newFormReader isAvailable.

	apiOperation doIt.

	self assert: formDefinition isAvailable.
	self assert: formDefinition newFormReader isAvailable.