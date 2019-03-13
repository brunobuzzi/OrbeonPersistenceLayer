tests
testResolverPostulacion

	self createFormDefinitionNamed: 'resolver-postulacion' in: 'dne' title: 'Resolver Postulacion' withTemplateMethod: #formDefinition_resolver_postulacion.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'resolver-postulacion' ifNone: [self assert: false].

	self assert: true