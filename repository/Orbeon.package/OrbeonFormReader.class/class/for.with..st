instance creation
for: xmlOrbeonFormDefinition with: xmlOrbeonInstance

	^super new initialize
		xmlDefinition: xmlOrbeonFormDefinition;
		parseXMLDefinition;
		setXmlInstanceDocument: xmlOrbeonInstance;
		yourself