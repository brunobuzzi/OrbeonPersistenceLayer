other
testPublishDefinitionWithoutSavedDefinition

	(self getOrbeonApplicationCache select: [:each | each isOrbeonApplication]) do: [:application |
		application definitionRegistry do: [:formRegistry |
			formRegistry getAllVersion do: [:publishedDefinition | 
				self assert: publishedDefinition definition notNil.
				"self assert: (publishedDefinition xmlString = publishedDefinition definition xmlString)."
			].
		].
	].