definition creation
createDefinition: formName version: version id: stringId withXML: xmlString in: anOrbeonApplication title: title xPathVersion: anOrbeonXmlPath
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"
	| savedDefinition |

	savedDefinition := self newNamed: formName inAppNamed: anOrbeonApplication applicationName.
	savedDefinition id: stringId;
		version: version;
		title: title.
	"an instance of <OrbeonPublishedFormDefinition> is created here"
	savedDefinition setXmlString: xmlString. 

	savedDefinition storeInApplication.

	savedDefinition definition 
		publish; 
		processXMLDefinitionFor: anOrbeonXmlPath.

	savedDefinition definition storeInApplication.

	^savedDefinition definition