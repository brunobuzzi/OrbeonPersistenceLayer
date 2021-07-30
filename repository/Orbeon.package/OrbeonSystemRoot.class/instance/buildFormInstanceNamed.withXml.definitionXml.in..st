forms - builder
buildFormInstanceNamed: definitionName withXml: instanceXmlString definitionXml: definitionXmlString in: app
	"The receiver create <anOrbeonFormInstance> of form definition named <definitionName> of Orbeon Application named <app> using the method <xmlMethodName> to get the XML string of the form"
	| application definition formInstance |

	application := self getExistingApplicationOrCreateNewNamed: app.
	definition := application definitionNamed: definitionName ifNone: [self buildPublishedFormNamed: definitionName title: '' withXml: definitionXmlString in: application].

	definition ifNil: [self buildPublishedFormNamed: definitionName title: '' withXml: definitionXmlString in: application]. "see issue #294"

	formInstance := 
		(OrbeonFormInstance newFor: definition withId: UUID new asString)
			definition: definition;
			xmlString: instanceXmlString;
			version: definition version;
			buildForm;
			yourself.

	^formInstance