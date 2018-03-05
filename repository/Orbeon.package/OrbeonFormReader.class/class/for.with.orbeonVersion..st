instance creation
for: xmlOrbeonFormDefinition with: xmlOrbeonInstance orbeonVersion: xpathVersionInstance

	^super new initialize
		orbeonXPath: xpathVersionInstance;
		xmlDefinition: xmlOrbeonFormDefinition;
		parseXMLDefinition;
		setXmlInstanceDocument: xmlOrbeonInstance;
		yourself