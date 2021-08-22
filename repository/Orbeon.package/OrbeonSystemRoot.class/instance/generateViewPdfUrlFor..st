url generation
generateViewPdfUrlFor: anOrbeonFormInstance

	^serverConfiguration orbeonIP, '/orbeon/fr/', anOrbeonFormInstance getApplicationName, '/', anOrbeonFormInstance getFormName, '/pdf/', anOrbeonFormInstance id