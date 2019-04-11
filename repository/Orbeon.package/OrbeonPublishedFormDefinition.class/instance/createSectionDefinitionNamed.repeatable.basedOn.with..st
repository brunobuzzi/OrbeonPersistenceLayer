process xml
createSectionDefinitionNamed: sectionName repeatable: aBoolean basedOn: xmlSection with: anOrbeonFormReader
	"Create the receiver FormSectionDefinition using the form reader <anOrbeonFormReader> "
	| librarySection section |

	librarySection := xmlSection descendantNodesSelect: [:e | 'component:*' match: e name]. "detect whether or not the section <xmlSection> is a library reference "
	
	librarySection isEmpty ifFalse: [^self createLibrarySectionDefinitionNamed: sectionName repeatable: aBoolean basedOn: xmlSection with: anOrbeonFormReader].

	section := FormSectionDefinition newNamed: sectionName definition: self.
	section bind: (xmlSection attributeAt: 'bind');
		isRepeatable: aBoolean.
	aBoolean ifTrue:[section iterationName: (anOrbeonFormReader getCustomIterationNameFor: sectionName bindName: section bind)].
	self createFieldDefinitionFor: section reader: anOrbeonFormReader with: xmlSection.
	self createGridDefinitionFor: section reader: anOrbeonFormReader with: xmlSection.

	^section