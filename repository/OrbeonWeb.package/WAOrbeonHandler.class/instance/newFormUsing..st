object operations
newFormUsing: anOrbeonFormDefinition

	self requestContext redirectTo: self getOrbeonWebServerConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormDefinition getApplicationName, '/', anOrbeonFormDefinition formName, '/new'