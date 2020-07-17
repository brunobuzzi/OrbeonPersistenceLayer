saved forms
addToClonedRegistry: anOrbeonSavedFormDefinition

	(clonedDefinitionsRegistry includesKey: anOrbeonSavedFormDefinition id)
	ifFalse: [clonedDefinitionsRegistry at: anOrbeonSavedFormDefinition id put: OrderedCollection new].

	^(clonedDefinitionsRegistry at: anOrbeonSavedFormDefinition id) add: (FormDefinitionRegistry newFor: self id: anOrbeonSavedFormDefinition id)