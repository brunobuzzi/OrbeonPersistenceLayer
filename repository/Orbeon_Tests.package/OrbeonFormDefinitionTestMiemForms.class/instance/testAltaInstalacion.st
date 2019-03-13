tests
testAltaInstalacion

	self createFormDefinitionNamed: 'alta-instalacion' in: 'dne' title: 'Alta Instalacion' withTemplateMethod: #formDefinition_alta_instalacion.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'alta-instalacion' ifNone: [self assert: false].

	self assert: true