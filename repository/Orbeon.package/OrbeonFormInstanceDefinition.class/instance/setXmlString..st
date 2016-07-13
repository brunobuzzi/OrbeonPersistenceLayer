other
setXmlString: aString

	xmlString := aString.

	definition 
		ifNil: [definition := self createOrbeonFormDefinition.
				definition instanceDefinition: self].

	definition xmlString: xmlString.