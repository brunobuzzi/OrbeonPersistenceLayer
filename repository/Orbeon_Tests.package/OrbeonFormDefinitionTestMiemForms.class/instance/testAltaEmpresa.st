tests
testAltaEmpresa

	self createFormDefinitionNamed: 'alta-empresa' in: 'dne' title: 'Alta Empresa' withTemplateMethod: #formDefinition_alta_empresa.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'alta-empresa' ifNone: [self assert: false].

	self assert: true