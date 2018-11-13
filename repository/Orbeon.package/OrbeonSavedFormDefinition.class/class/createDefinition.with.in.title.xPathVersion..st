definition creation
createDefinition: formName with: definitionMethod in: anOrbeonApplication title: title xPathVersion: anOrbeonXmlPath
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"
	| savedDefinition |

	savedDefinition := self newNamed: formName inAppNamed: anOrbeonApplication applicationName.
	savedDefinition id: UUID new asString;
		version: 1;
		title: title.
	"an instance of <OrbeonPublishedFormDefinition> is created here"
	savedDefinition setXmlString: (anOrbeonXmlPath templateClass perform: definitionMethod). 

	anOrbeonApplication addSavedDefinition: savedDefinition.

	savedDefinition definition 
		publish; 
		processXMLDefinitionFor: anOrbeonXmlPath.

	anOrbeonApplication addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition