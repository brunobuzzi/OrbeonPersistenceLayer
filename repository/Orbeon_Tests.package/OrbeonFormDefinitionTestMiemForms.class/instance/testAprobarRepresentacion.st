tests
testAprobarRepresentacion

	self createFormDefinitionNamed: 'aprobar-representacion' in: 'dne' title: 'Aprobar Representacion' withTemplateMethod: #formDefinition_aprobar_representacion.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'aprobar-representacion' ifNone: [self assert: false].

	self assert: true