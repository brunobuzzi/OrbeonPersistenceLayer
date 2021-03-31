instance creation
for: xmlOrbeonFormDefinition

	^super new initialize
		xmlDefinition: xmlOrbeonFormDefinition;
		parseXMLDefinition;
		yourself