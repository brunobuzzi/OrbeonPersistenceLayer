recursive section
createSectionsInstancesWith: anOrbeonFormDefinition xmlSegment: xmlInstanceSegment
	"The receiver answer anOrderedCollection of FormSectionInstance based on form definition <anOrbeonFormDefinition> using the xml node <xmlInstanceSegment>.
	Iterate over Main Sections definitions of <anOrbeonFormDefinition> and recursively creates the sub sections.
	1. Create field instances. 2- Create grid instances. 3- Recursively create sub sections"
	| sectionsInstances |

	sectionsInstances := OrderedCollection new.
	anOrbeonFormDefinition sectionDefinitions do:[:section | | sectionInst xmlSubSegment |
		xmlSubSegment := xmlInstanceSegment elementAt: section name. "xml that represent the current Section Instance"
		sectionInst := (section isRepeatable ifTrue: ["RepeatSectionInstance"NormalSectionInstance] ifFalse: [NormalSectionInstance]) name: section name definition: section.
		sectionsInstances add: sectionInst. "store the section instance in the dictionary collector"
		"if <xmlSubSegment> is NIL then the definition <anOrbeonFormDefinition> does NOT MATCH with the xml <xmlInstanceSegment>.
		This could be the case when in Orbeon a field is added/removed/renamed and the definition is saved with the same version"
		"if <xmlSubSegment> is NOT NIL then creates the inner (recursive) elements of <sectionInst> as defined in <section>"
		xmlSubSegment ifNotNil: [self createInnerElementsOf: sectionInst basedOn: section xmlSegment: xmlSubSegment].
	].
	^sectionsInstances "a dictionary of FormSectionInstance"