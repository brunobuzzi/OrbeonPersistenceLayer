other
newFor: aWARestfulHandler withXml: xmlString application: anOrbeonApplication form: definition

	^(self newFor: aWARestfulHandler withXml: xmlString)
		application: anOrbeonApplication;
		lastFormDefinition: definition;
		parseXmlString;
		yourself