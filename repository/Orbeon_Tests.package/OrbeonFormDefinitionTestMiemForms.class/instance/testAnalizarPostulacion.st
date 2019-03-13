tests
testAnalizarPostulacion

	self createFormDefinitionNamed: 'analizar-postulacion' in: 'dne' title: 'Analizar Postulacion' withTemplateMethod: #formDefinition_analizar_postulacion.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'analizar-postulacion' ifNone: [self assert: false].

	self assert: true