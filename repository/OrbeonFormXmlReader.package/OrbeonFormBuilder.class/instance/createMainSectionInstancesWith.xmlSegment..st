build instance components
createMainSectionInstancesWith: anOrbeonFormDefinition xmlSegment: xmlInstanceSegment
	"The receiver answer anOrderedCollection of FormSectionInstance based on form definition <anOrbeonFormDefinition> using the xml node <xmlInstanceSegment> (/form for main sections).
	Iterate over Main Sections definitions of <anOrbeonFormDefinition> and recursively creates the sub sections.
	1. Create field instances. 2- Create grid instances. 3- Recursively create sub sections"
	| sectionsInstances |

	sectionsInstances := OrderedCollection new.
	anOrbeonFormDefinition sectionDefinitionsDo:[:section | | xmlSubSegments |
		xmlSubSegments := section isRepeatable
			ifTrue: [OrderedCollection withAll: (xmlInstanceSegment xPath: ('/form/', section getXpathForNodeContent))]
			ifFalse: [ | subSegment | "elementAt: should not answer nil, ifNil --> there is a mismatch between the instance and it's definition"
						subSegment := xmlInstanceSegment 
													elementAt: section name 
													ifAbsent: [OrbeonInvalidXMLException signal: 'The Form definition structure does not match with the Form Instance structure']. 
						OrderedCollection with: subSegment].
		(xmlSubSegments select: [:each | each notNil]) do: [:xmlSegment | | sectionInst |
			sectionInst := FormSectionInstance newNamed: section name definition: section.
			sectionsInstances add: sectionInst. "store the section instance in the dictionary collector"
			"if <xmlSubSegment> is NIL then the definition <anOrbeonFormDefinition> does NOT MATCH with the xml <xmlInstanceSegment>.
			This could be the case when in Orbeon a field is added/removed/renamed and the definition is saved with the same version"
			"if <xmlSubSegment> is NOT NIL then creates the inner (recursive) elements of <sectionInst> as defined in <section>"
			self createInnerStructureOf: sectionInst basedOn: section xmlSegment: xmlSegment.
		].
	].
	^sectionsInstances "a dictionary of FormSectionInstance"