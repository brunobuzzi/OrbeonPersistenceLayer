process xml
createSectionsDefinitionWith: anOrbeonFormReader
	"Create the receiver FormSectionDefinition using the form reader <anOrbeonFormReader> "

	"Normal Sections"
	(anOrbeonFormReader formMainSectionsRepeatable: false) do: [:xmlSection | | sectionName section |

		sectionName := anOrbeonFormReader getNameFrom: xmlSection.
		section := self createSectionDefinitionNamed: sectionName repeatable: false basedOn: xmlSection with: anOrbeonFormReader.
		self addSectionDefinition: section.
		self createSubSectionsFor: section node: xmlSection with: anOrbeonFormReader].

	"Repeatable Sections"
	(anOrbeonFormReader formMainSectionsRepeatable: true) do: [:xmlSection  | | sectionName section | 

		sectionName := anOrbeonFormReader getNameFrom: xmlSection.
		section := self createSectionDefinitionNamed: sectionName repeatable: true basedOn: xmlSection with: anOrbeonFormReader.
		self addSectionDefinition: section.
		self createSubSectionsFor: section node: xmlSection with: anOrbeonFormReader].