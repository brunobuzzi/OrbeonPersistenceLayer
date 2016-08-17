process xml
createGridDefinitionFor: aFormSectionDefinition reader: anOrbeonFormReader with: xmlGrid
	"Populate receiver's section definition <aFormSectionDefinition> with Field Definition using <anOrbeonFormReader> on anXML element <xmlGrid>.
	Only get Repeatable Grids"

	(anOrbeonFormReader formGridComponentsIn: xmlGrid) do: [:eachGrid | | gridDefinition gridName |
		gridName := (eachGrid attributeAt: 'bind') allButLast: 5. "remove: -bind"
		gridDefinition := FormGridDefinition name: gridName.
		gridDefinition bind: (xmlGrid attributeAt: 'bind').
		self createGridFieldDefinitionFor: gridDefinition reader: anOrbeonFormReader with: eachGrid.
		aFormSectionDefinition addGridDefinition: gridDefinition.
	]