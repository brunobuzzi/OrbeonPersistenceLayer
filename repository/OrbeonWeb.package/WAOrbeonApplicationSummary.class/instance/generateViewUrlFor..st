instance redirect
generateViewUrlFor: anOrbeonFormInstance

	^self getOrbeonWebServerConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance getFormName, '/view/', anOrbeonFormInstance id