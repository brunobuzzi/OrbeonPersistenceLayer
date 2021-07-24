private
setRoot: anOrbeonSystemRoot xmlDefinition: xmlOrbeonFormDefinition xmlInstanceDocument: xmlOrbeonInstance

	systemRoot := anOrbeonSystemRoot.

	xmlDefinition := xmlOrbeonFormDefinition.

	self parseXMLDefinition.

	self parseXMLInstance: xmlOrbeonInstance