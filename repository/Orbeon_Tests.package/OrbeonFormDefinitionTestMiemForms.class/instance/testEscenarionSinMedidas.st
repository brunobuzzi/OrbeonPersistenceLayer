tests
testEscenarionSinMedidas

	self createFormDefinitionNamed: 'escenario-sin-medidas' in: 'dne' title: 'Escenarion Sin Medidas' withTemplateMethod: #formDefinition_escenario_sin_medidas.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'escenario-sin-medidas' ifNone: [self assert: false].

	self assert: true