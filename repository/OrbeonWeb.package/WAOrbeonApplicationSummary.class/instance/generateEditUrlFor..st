instance redirect
generateEditUrlFor: anOrbeonFormInstance

	^OrbeonServerConfiguration default orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance getFormName, '/edit/', anOrbeonFormInstance id