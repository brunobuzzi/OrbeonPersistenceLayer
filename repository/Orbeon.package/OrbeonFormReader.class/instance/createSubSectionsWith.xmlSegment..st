recursive section
createSubSectionsWith: aFormSectionDefinition xmlSegment: xmlInstanceSegment
	"Answer a <FormSectionInstance> with all sub sections included in it.
	The receiver recursively iterate over <aFormSectionDefinition> sub sections to recreate the XML structure of the form's sections.
	The recursive call depends on section property <isRepeatable>"
	| sectionInst xmlSection xpath |

	xpath := aFormSectionDefinition parentSectionIsRepeatable 
		ifTrue: [aFormSectionDefinition parentSection getXmlterationName, '/', aFormSectionDefinition name] "it must access the iteration node first then the xml section"
		ifFalse: [aFormSectionDefinition name]. "access the xml node directly"

	xmlSection := (xmlInstanceSegment xPath: xpath) ifNotEmpty: [:collection | collection last] ifEmpty: [OrbeonInvalidXMLException signal: 'Invalid Subsections Structure'].

	aFormSectionDefinition isRepeatable 
		ifFalse: [sectionInst := NormalSectionInstance	name: aFormSectionDefinition name definition: aFormSectionDefinition.
					self createSubSectionsInstancesWith: aFormSectionDefinition instance: sectionInst xmlSegment: xmlSection] 

		ifTrue: [sectionInst := "RepeatSectionInstance"NormalSectionInstance	name: aFormSectionDefinition name definition: aFormSectionDefinition.
					self createRepeatableSubSectionsInstancesWith: aFormSectionDefinition instance: sectionInst xmlSegment: xmlSection].

	^sectionInst