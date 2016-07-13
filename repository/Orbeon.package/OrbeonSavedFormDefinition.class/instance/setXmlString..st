other
setXmlString: aString
	"The receiver set the instance variable <xmlString> with <aString> and create the related <OrbeonPublishedFormDefinition> if does not exist"

	xmlString := aString.

	definition 
		ifNil: [definition := self createPublishedFormDefinition.
				definition definition: self].

	definition xmlString: xmlString.