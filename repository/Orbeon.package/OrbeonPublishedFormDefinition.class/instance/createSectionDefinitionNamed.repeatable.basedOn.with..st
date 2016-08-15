process xml
createSectionDefinitionNamed: sectionName repeatable: aBoolean basedOn: xmlSection with: anOrbeonFormReader
	"Create the receiver FormSectionDefinition using the form reader <anOrbeonFormReader> "
	| section |

	section := FormSectionDefinition name: sectionName definition: self.
	section bind: (xmlSection attributeAt: 'bind');
		isRepeatable: aBoolean;
		iterationName: (anOrbeonFormReader getCustomIterationNameFor: sectionName).
	self createFieldDefinitionFor: section reader: anOrbeonFormReader with: xmlSection.
	self createGridDefinitionFor: section reader: anOrbeonFormReader with: xmlSection.

	^section