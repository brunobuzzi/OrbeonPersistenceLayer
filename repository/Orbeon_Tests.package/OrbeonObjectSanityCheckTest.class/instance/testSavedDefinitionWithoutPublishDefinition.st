other
testSavedDefinitionWithoutPublishDefinition

	(self getOrbeonApplicationCache select: [:each | each isOrbeonApplication]) do: [:application |
		application definitionRegistry do: [:formRegistry |
			formRegistry savedDefinitions do: [:collection| 
				collection do: [:savedDefinition | 
					self assert: savedDefinition definition notNil.
					"self assert: (savedDefinition xmlString = savedDefinition definition xmlString)."
				].
			].
		].
	].