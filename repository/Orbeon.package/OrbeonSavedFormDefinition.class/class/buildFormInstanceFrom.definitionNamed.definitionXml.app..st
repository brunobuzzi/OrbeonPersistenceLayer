instance creation
buildFormInstanceFrom: xmlString definitionNamed: definitionName definitionXml: definitionXml app: application 
	"The receiver create <anOrbeonFormInstance> of form definition named <definitionName> of Orbeon Application named <app> using the method <xmlMethodName> to get the XML string of the form"
	| definition formInstance |

	definition := application definitionNamed: definitionName ifNone: [self buildDefinitionFrom: definitionXml name: definitionName in: application].

	definition ifNil: [definition := self buildDefinitionFrom: definitionXml name: definitionName in: application]. "see issue #294"

	formInstance := 
		(OrbeonFormInstance newFor: definition withId: UUID new asString)
			definition: definition;
			xmlString: xmlString;
			version: definition version;
			buildForm;
			yourself.

	^formInstance