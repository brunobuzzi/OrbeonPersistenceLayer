process xml
createGridDefinitionFor: aFormSectionDefinition reader: anOrbeonFormReader with: xmlSection
	"Populate receiver's section definition <aFormSectionDefinition> with Field Definition using <anOrbeonFormReader> on anXML element <xmlSection>.
	Only get Repeatable Grids"


	(anOrbeonFormReader formGridComponentsIn: xmlSection) do: [:eachGrid | | gridDefinition gridName |
		((eachGrid attributeAt: 'id') size <= 5) ifTrue: [^OrbeonControlSizeException signal: 'No "-grid" word found in grid''s name'].
		gridName := (eachGrid attributeAt: 'id') allButLast: 5. "remove: -grid"
		gridDefinition := FormGridDefinition name: gridName.
		self createGridFieldDefinitionFor: gridDefinition reader: anOrbeonFormReader with: eachGrid.
		aFormSectionDefinition addGridDefinition: gridDefinition.
	]