recursive section
createSectionsInstancesWith: anOrbeonFormDefinition
	"The receiver answer anOrderedCollection of FormSectionInstance. 
	The instances are created based in the definition parameter <anOrbeonFormDefinition> starting in the xml node 'form' "

	"^self createSectionsInstancesWith: anOrbeonFormDefinition xmlSegment: (xmlInstanceDocument elementAt: 'form')"

	^self createMainSectionInstancesWith: anOrbeonFormDefinition xmlSegment: (xmlInstanceDocument elementAt: 'form')