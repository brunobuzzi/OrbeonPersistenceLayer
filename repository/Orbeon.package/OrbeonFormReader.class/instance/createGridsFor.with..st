output
createGridsFor: aFormSectionInstance with: aDictionary
	| sectionDefinition sectionGridsNames |

	sectionDefinition := aFormSectionInstance sectionDefinition.

	sectionGridsNames := aDictionary keys select: [:eachKey | sectionDefinition includesGridDefinitionNamed: eachKey].

	sectionGridsNames do: [:gridName | | gridDefinition grid |
		gridDefinition := sectionDefinition getGridDefinitionNamed: gridName.
		grid := FormGridInstance name: gridName definition: gridDefinition.
		grid gridIterations: (aDictionary at: gridName).
		aFormSectionInstance addGrid: grid.
		].