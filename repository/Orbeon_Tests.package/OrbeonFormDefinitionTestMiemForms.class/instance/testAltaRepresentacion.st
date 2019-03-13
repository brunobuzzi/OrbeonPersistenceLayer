tests
testAltaRepresentacion

	self createFormDefinitionNamed: 'alta-representaction' in: 'dne' title: 'Alta Representacion' withTemplateMethod: #formDefinition_alta_representacion.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'alta-representaction' ifNone: [self assert: false].

	self assert: true