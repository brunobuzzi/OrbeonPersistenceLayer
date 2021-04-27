build form definitions
buildDefinitionFrom: xmlString name: formName version: version id: stringId in: anOrbeonApplication title: title
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"
	| savedDefinition |

	savedDefinition := self newNamed: formName inAppNamed: anOrbeonApplication applicationName.
	savedDefinition id: stringId;
		version: version;
		xmlString: xmlString;
		title: title.
	"an instance of <OrbeonPublishedFormDefinition> is created here"
	"savedDefinition setXmlString: xmlString. "
"	savedDefinition basicBuildPublishedFormDefinition."

	savedDefinition 
		storeInApplication;
		buildForm.

	^savedDefinition