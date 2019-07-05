other
generateViewPdfUrlFor: anOrbeonFormInstance

	^OrbeonServerConfiguration default orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance getFormName, '/pdf/', anOrbeonFormInstance id