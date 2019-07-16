instance redirect
generateViewPdfUrlFor: anOrbeonFormInstance

	^self getOrbeonWebServerConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance getFormName, '/pdf/', anOrbeonFormInstance id