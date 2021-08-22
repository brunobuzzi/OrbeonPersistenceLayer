url generation
generateViewUrlFor: anOrbeonFormInstance

	^serverConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance getFormName, '/view/', anOrbeonFormInstance id