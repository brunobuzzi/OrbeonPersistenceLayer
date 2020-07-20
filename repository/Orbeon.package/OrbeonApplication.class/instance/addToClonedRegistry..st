saved forms
addToClonedRegistry: anOrbeonSavedFormDefinition

	(clonedDefinitionsRegistry includesKey: anOrbeonSavedFormDefinition id)
	ifFalse: [clonedDefinitionsRegistry at: anOrbeonSavedFormDefinition id put: (FormDefinitionRegistry newFor: self id: anOrbeonSavedFormDefinition id)].

	^(clonedDefinitionsRegistry at: anOrbeonSavedFormDefinition id) addSavedDefinition: anOrbeonSavedFormDefinition