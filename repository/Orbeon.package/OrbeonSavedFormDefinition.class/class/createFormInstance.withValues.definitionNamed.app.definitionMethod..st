instance creation
createFormInstance: xmlMethodName withValues: anArray definitionNamed: definitionName app: app definitionMethod: definitionMethod
	"The receiver create <anOrbeonFormInstance> of form definition named <definitionName> of Orbeon Application named <app> using the method <xmlMethodName> to get the XML string of the form"
	| application definition formInstance |

	application := self defaultApplicationManagerClass applicationNamed: app.
	definition := application definitionNamed: definitionName ifNone: [self createDefinition: definitionName with: definitionMethod in: application].

	formInstance := 
		(OrbeonFormInstance newFor: definition withId: UUID new asString)
			definition: definition;
			xmlString: (OrbeonFormInstanceTemplate perform: xmlMethodName withArguments: anArray);
			version: definition version;
			processXML;
			yourself.

	^formInstance