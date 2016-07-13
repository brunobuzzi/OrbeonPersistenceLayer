object operations
viewInstance: anOrbeonFormInstance

	self requestContext redirectTo:  self getOrbeonWebServerConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance formName, '/view/', anOrbeonFormInstance id