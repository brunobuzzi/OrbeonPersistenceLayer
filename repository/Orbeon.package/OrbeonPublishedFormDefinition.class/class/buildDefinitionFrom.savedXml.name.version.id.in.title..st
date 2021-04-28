build form definitions
buildDefinitionFrom: xmlString savedXml: savedXml name: formName version: version id: stringId in: anOrbeonApplication title: title
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"
	| publidhedDefinition |

	self defaultSavedFormDefinitionClass buildDefinitionFrom: savedXml name: formName version: version id: stringId in: anOrbeonApplication title: title.

	publidhedDefinition := self newNamed: formName inAppNamed: anOrbeonApplication applicationName.
	publidhedDefinition id: stringId;
		xmlString: xmlString;
		version: version;
		title: title.

	publidhedDefinition associateSavedAndPublishedForms.

	publidhedDefinition storeInApplication.

	publidhedDefinition
		publish; 
		buildForm.

	^publidhedDefinition