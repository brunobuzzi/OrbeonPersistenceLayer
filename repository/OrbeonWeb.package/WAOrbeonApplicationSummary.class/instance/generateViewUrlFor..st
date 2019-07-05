other
generateViewUrlFor: anOrbeonFormInstance

	^OrbeonServerConfiguration default orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance getFormName, '/view/', anOrbeonFormInstance id