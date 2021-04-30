build definition components
createSubSectionsOn: anOrbeonPublishedFormDefinition for: aFormSectionDefinition node: xmlSection
	"The receiver creates subsection of <aFormSectionDefinition> inside xml segment <xmlSection> using the xml reader <anOrbeonFormReader>"

	(self formSubSectionsOf: xmlSection) do: [:xmlSubSection | | sectionName section isRepeatable |
		sectionName := self getNameFrom: xmlSubSection.
		isRepeatable := xmlSubSection includesAttribute: 'repeat'. "set if the sub section is repeatable"
		section := self createSectionDefinitionOn: anOrbeonPublishedFormDefinition named: sectionName repeatable: isRepeatable basedOn: xmlSubSection.
		aFormSectionDefinition addSubSection: section.
		self createSubSectionsOn: anOrbeonPublishedFormDefinition for: section node: xmlSubSection]. "recursive call"