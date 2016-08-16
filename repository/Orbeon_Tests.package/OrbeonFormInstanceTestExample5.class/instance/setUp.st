other
setUp
	| definition application |

	application := OrbeonApplication applicationNamed: 'agesic' ifNone: [self assert: false].
	definition := application definitionNamed: 'test-section-interation-name' ifNone: [self createFormStructure.].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_custom_iteration;
					yourself.

	form processXML.
"	form	processXMLSections;"