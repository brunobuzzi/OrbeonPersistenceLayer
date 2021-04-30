build definition components
createGridDefinitionOn: anOrbeonPublishedFormDefinition for: aFormSectionDefinition with: xmlGrid
	"Populate receiver's section definition <aFormSectionDefinition> with Field Definition using <anOrbeonFormReader> on anXML element <xmlGrid>.
	Only get Repeatable Grids"

	(self formGridComponentsIn: xmlGrid) do: [:eachGrid | | gridDefinition gridName iterationName |
		gridName := (eachGrid attributeAt: 'bind') allButLast: 5. "remove: -bind"
		gridDefinition := FormGridDefinition name: gridName.
		gridDefinition bind: (eachGrid attributeAt: 'bind').
		iterationName := self getCustomIterationNameFor: gridName bindName: gridDefinition bind.
		gridDefinition iterationName: iterationName.
		self createGridFieldDefinitionOn: anOrbeonPublishedFormDefinition for: gridDefinition with: eachGrid.
		aFormSectionDefinition addGridDefinition: gridDefinition.
	]