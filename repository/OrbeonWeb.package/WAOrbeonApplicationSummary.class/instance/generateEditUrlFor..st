instance redirect
generateEditUrlFor: anOrbeonFormInstance

	^self getOrbeonWebServerConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance getFormName, '/edit/', anOrbeonFormInstance id