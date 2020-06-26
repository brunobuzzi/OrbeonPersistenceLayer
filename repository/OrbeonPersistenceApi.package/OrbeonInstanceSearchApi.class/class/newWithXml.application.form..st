other
newWithXml: xmlString application: anOrbeonApplication form: definition

	^(self newWithXml: xmlString)
		application: anOrbeonApplication;
		lastFormDefinition: definition;
		parseXmlString;
		yourself