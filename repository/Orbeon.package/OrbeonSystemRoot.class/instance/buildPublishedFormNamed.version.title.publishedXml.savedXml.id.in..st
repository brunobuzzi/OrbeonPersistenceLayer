forms - builder
buildPublishedFormNamed: formName version: version title: title publishedXml: publishedXml savedXml: savedXml id: stringId in: anOrbeonApplication
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <anOrbeonApplication>.
	The XML of the form is <xmlDefinition> "
	| publishedDefinition savedDefinition |

	savedDefinition := OrbeonSavedFormDefinition newNamed: formName in: anOrbeonApplication.
	savedDefinition id: stringId;
		version: version;
		xmlString: savedXml;
		title: title.

	savedDefinition 
		storeInApplication;
		buildForm.

	publishedDefinition := OrbeonPublishedFormDefinition newNamed: formName in: anOrbeonApplication.
	publishedDefinition id: stringId;
		xmlString: publishedXml;
		version: version;
		title: title.

	publishedDefinition associateSavedAndPublishedForms.

	publishedDefinition storeInApplication.

	^publishedDefinition