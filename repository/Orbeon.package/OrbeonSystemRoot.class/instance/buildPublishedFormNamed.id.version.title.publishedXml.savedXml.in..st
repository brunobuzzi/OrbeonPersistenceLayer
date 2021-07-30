forms - builder
buildPublishedFormNamed: formName id: stringId version: version title: title publishedXml: publishedXml savedXml: savedXml in: anOrbeonApplication
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <anOrbeonApplication>.
	The XML of the form is <xmlDefinition> "
	| publishedDefinition savedDefinition |

	savedDefinition := self buildSavedFormNamed: formName id: stringId version: version title: title withXml: savedXml in: anOrbeonApplication.

	publishedDefinition := OrbeonPublishedFormDefinition newNamed: formName in: anOrbeonApplication.
	publishedDefinition id: stringId;
		xmlString: publishedXml;
		version: version;
		title: title.

	publishedDefinition 
		associateSavedAndPublishedForms;
		storeInApplication;
		buildForm.

	^publishedDefinition