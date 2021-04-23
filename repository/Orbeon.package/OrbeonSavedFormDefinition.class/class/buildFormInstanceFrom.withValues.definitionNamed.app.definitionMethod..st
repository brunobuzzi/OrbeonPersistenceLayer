build form instances
buildFormInstanceFrom: instanceXmlString withValues: anArray definitionNamed: definitionName app: app definitionMethod: definitionXmlString
	"The receiver create <anOrbeonFormInstance> of form definition named <definitionName> of Orbeon Application named <app> using the method <xmlMethodName> to get the XML string of the form"
	| application definition formInstance |

	application := self defaultApplicationManagerClass applicationNamed: app.
	definition := application definitionNamed: definitionName ifNone: [self buildDefinitionFrom: definitionXmlString name: definitionName in: application].

	definition ifNil: [definition := self buildDefinitionFrom: definitionXmlString name: definitionName in: application]. "see issue #294"

	formInstance := 
		(OrbeonFormInstance newFor: definition withId: UUID new asString)
			definition: definition;
			xmlString: instanceXmlString;
			version: definition version;
			buildForm;
			yourself.

	^formInstance