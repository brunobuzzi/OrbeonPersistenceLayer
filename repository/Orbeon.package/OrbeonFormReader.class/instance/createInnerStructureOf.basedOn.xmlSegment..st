recursive section 2
createInnerStructureOf: aFormSectionInstance basedOn: aFormSectionDefinition xmlSegment: xmlSegment
	"The receiver create the inner structure of section <aFormSectionInstance> with definition <aFormSectionDefinition> taking data from xml node <xmlSegment>"

	"create Fields Instances and Grid Instances"
	self createSimpleComponentsOf: aFormSectionInstance basedOn: aFormSectionDefinition xmlSegment: xmlSegment.

	"create the recursive subsections of the receiver"
	aFormSectionDefinition subSections do: [:subSectionDef | | sections |
		sections := (xmlSegment xPath: subSectionDef getXPathNodeName)
								ifNotEmpty: [:collection | collection] 
								ifEmpty: [OrbeonInvalidXMLException signal: 'Invalid Subsections Structure'].

		sections do: [:xmlSection | | subSection |
			subSection := NormalSectionInstance	name: subSectionDef name definition: subSectionDef.
			aFormSectionInstance addSubSection: subSection.
			self createInnerStructureOf: subSection basedOn: subSectionDef xmlSegment: xmlSection].
	].