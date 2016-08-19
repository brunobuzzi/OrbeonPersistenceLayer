other
setUp
	| definition application |

	application := OrbeonApplication applicationNamed: 'agesic' ifNone: [self assert: false].
	definition := self createFormDefinition2.
	"definition := application definitionNamed: 'test' ifNone: [self createFormDefinition]."

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: self getXMLFormInstance;
					processXMLSections;
					yourself.