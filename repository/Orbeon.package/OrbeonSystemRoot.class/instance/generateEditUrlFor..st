url generation
generateEditUrlFor: anOrbeonFormInstance

	^serverConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance getFormName, '/edit/', anOrbeonFormInstance id