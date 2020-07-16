saved definitions
addSavedDefinition: anOrbeonSavedFormDefinition
	"The receiver add the saved definition (not published yet) <anOrbeonSavedFormDefinition>"

	anOrbeonSavedFormDefinition setRegistry: self.
	^savedDefinitions add: anOrbeonSavedFormDefinition