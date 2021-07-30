forms - builder
buildSavedFormNamed: formName id: stringId version: version title: title withXml: xmlString in: anOrbeonApplication
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"
	| savedDefinition |

	savedDefinition := OrbeonSavedFormDefinition newNamed: formName in: anOrbeonApplication.
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