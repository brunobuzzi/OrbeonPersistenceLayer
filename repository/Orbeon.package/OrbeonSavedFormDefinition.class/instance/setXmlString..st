publish
setXmlString: aString
	"The receiver set the instance variable <xmlString> with <aString> and create the related <OrbeonPublishedFormDefinition> if does not exist.
	After this method <OrbeonSavedFormDefinition> is related to <OrbeonPublishedFormDefinition>:
	anOrbeonSavedFormDefinition definition == anOrbeonPublishedFormDefinition
	anOrbeonPublishedFormDefinition definition == anOrbeonSavedFormDefinition"

	xmlString := aString.

	definition 
		ifNil: [definition := self createPublishedFormDefinition.
				definition definition: self].

	definition xmlString: xmlString.