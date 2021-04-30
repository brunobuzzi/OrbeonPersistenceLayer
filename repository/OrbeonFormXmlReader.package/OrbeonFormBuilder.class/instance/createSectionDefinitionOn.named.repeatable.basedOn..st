build definition components
createSectionDefinitionOn: anOrbeonPublishedFormDefinition named: sectionName repeatable: aBoolean basedOn: xmlSection
	"Create the receiver FormSectionDefinition using the form reader <anOrbeonFormReader> "
	| librarySection section |

	librarySection := xmlSection descendantNodesSelect: [:e | 'component:*' match: e name]. "detect whether or not the section <xmlSection> is a library reference "

	librarySection isEmpty ifFalse: [^self createLibrarySectionDefinitionOn: anOrbeonPublishedFormDefinition named: sectionName repeatable: aBoolean basedOn: xmlSection].

	section := FormSectionDefinition newNamed: sectionName definition: anOrbeonPublishedFormDefinition.
	section bind: (xmlSection attributeAt: 'bind');
		isRepeatable: aBoolean.
	aBoolean ifTrue:[section iterationName: (self getCustomIterationNameFor: sectionName bindName: section bind)].
	self createFieldDefinitionOn: anOrbeonPublishedFormDefinition for: section with: xmlSection.
	self createGridDefinitionOn: anOrbeonPublishedFormDefinition for: section with: xmlSection.

	^section