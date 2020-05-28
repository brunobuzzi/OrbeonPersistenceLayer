other
testAvailableFlagConsistency
	"Iterate over <xmlString>s of <OrbeonPublishedFormDefinition> and <OrbeonSavedFormDefinition> and check of both values are equal"

	(self getOrbeonApplicationCache select: [:each | each isOrbeonApplication]) do: [:application |
		application definitionRegistry do: [:formRegistry |
			formRegistry getAllVersion do: [:publishedDefinition | 
				publishedDefinition 
			].
		].
	].