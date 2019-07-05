definition redirect
generateEditUrlForDefinition: anOrbeonPublishedFormDefinition

	^OrbeonServerConfiguration default orbeonIP, '/orbeon/fr/orbeon/builder/edit/', anOrbeonPublishedFormDefinition id