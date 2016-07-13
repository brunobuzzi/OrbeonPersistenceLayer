object operations
editInstance: anOrbeonFormInstance

	self requestContext redirectTo: self getOrbeonWebServerConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance formName, '/edit/', anOrbeonFormInstance id