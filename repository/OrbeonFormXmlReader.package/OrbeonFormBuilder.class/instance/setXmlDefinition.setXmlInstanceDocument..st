private
setXmlDefinition: xmlOrbeonFormDefinition setXmlInstanceDocument: xmlOrbeonInstance

	xmlDefinition := xmlOrbeonFormDefinition.

	self parseXMLDefinition.

	self parseXMLInstance: xmlOrbeonInstance