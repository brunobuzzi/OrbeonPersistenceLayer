build definition components
createSectionsDefinitionsOn: anOrbeonPublishedFormDefinition

	anOrbeonPublishedFormDefinition purgeLibraryComponentsDefinitions.

	"Normal Sections"
	(self formMainSectionsRepeatable: false) do: [:xmlSection | | sectionName section |
		sectionName := self getNameFrom: xmlSection.
		section := self createSectionDefinitionOn: anOrbeonPublishedFormDefinition named: sectionName repeatable: false basedOn: xmlSection.
		anOrbeonPublishedFormDefinition addSectionDefinition: section.
		section isNativeComponent ifTrue: [self createSubSectionsOn: anOrbeonPublishedFormDefinition for: section node: xmlSection].
	].

	"Repeatable Sections"
	(self formMainSectionsRepeatable: true) do: [:xmlSection  | | sectionName section | 
		sectionName := self getNameFrom: xmlSection.
		section := self createSectionDefinitionOn: anOrbeonPublishedFormDefinition named: sectionName repeatable: true basedOn: xmlSection.
		anOrbeonPublishedFormDefinition addSectionDefinition: section.
		self createSubSectionsOn: anOrbeonPublishedFormDefinition for: section node: xmlSection].