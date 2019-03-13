tests
testDocumentosRepresentacion

	self createFormDefinitionNamed: 'documentos-representacion' in: 'dne' title: 'Documentos Representacion' withTemplateMethod: #formDefinition_documentos_representacion.

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'dne') definitionNamed: 'documentos-representacion' ifNone: [self assert: false].

	self assert: true