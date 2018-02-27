other
for: xmlOrbeonFormDefinition orbeonVersion: xpathVersionInstance

	^super new initialize
		orbeonXPath: xpathVersionInstance;
		xmlDefinition: xmlOrbeonFormDefinition;
		parseXMLDefinition;
		yourself