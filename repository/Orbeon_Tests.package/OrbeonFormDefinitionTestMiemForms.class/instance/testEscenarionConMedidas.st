tests
testEscenarionConMedidas

	self createFormDefinitionNamed: 'escenario-con-medidas' in: 'dne' title: 'Escenarion Con Medidas' withTemplateMethod: #formDefinition_escenario_con_medidas.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'escenario-con-medidas' ifNone: [self assert: false].

	self assert: true