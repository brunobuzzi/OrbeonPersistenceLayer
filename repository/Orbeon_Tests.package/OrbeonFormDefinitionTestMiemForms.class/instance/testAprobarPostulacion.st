tests
testAprobarPostulacion

	self createFormDefinitionNamed: 'aprobar-postulacion' in: 'dne' title: 'Aprobar Postulacion' withTemplateMethod: #formDefinition_aprobar_postulacion.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'aprobar-postulacion' ifNone: [self assert: false].

	self assert: true