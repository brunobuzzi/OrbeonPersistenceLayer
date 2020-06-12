other
testAvailableFlagConsistency
	"Iterate over <xmlString>s of <OrbeonPublishedFormDefinition> and <OrbeonSavedFormDefinition> and check of both values are equal"

	(self getOrbeonApplicationClass selectInCache: [:each | each isOrbeonApplication]) do: [:application |
		application definitionRegistry do: [:formRegistry |
			formRegistry getAllVersion do: [:publishedDefinition | 
				self assert: (publishedDefinition newFormReader isAvailable = publishedDefinition definition newFormReader isAvailable).
				self assert: (publishedDefinition isAvailable = publishedDefinition definition isAvailable).
			].
		].
	].