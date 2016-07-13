process xml
createSubSectionsFor: aFormSectionDefinition node: xmlSection with: anOrbeonFormReader
	"The receiver creates subsection of <aFormSectionDefinition> inside xml segment <xmlSection> using the xml reader <anOrbeonFormReader>"

	(anOrbeonFormReader formSubSectionsOf: xmlSection) do: [:xmlSubSection | | sectionName section isRepeatable |
		sectionName := anOrbeonFormReader getNameFrom: xmlSubSection.
		isRepeatable := xmlSubSection includesAttribute: 'repeat'. "set if the sub section is repeatable"
		section := self createSectionDefinitionNamed: sectionName repeatable: isRepeatable basedOn: xmlSubSection with: anOrbeonFormReader.
		aFormSectionDefinition addSubSection: section.
		self createSubSectionsFor: section node: xmlSubSection with: anOrbeonFormReader.]. "recursive call"