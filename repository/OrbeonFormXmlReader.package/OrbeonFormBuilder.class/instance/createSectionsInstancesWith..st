build instance components
createSectionsInstancesWith: anOrbeonFormDefinition
	"The receiver answer anOrderedCollection of FormSectionInstance. 
	The instances are created based in the definition parameter <anOrbeonFormDefinition> starting in the xml node 'form' "

	^self createMainSectionInstancesWith: anOrbeonFormDefinition xmlSegment: (xmlInstanceDocument elementAt: 'form')