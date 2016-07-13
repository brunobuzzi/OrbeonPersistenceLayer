object operations
viewPDFInstance: anOrbeonFormInstance

	self requestContext redirectTo:  self getOrbeonWebServerConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance formName, '/pdf/', anOrbeonFormInstance id