other
setUp
	| definition application |

	application := OrbeonApplication applicationNamed: 'agesic' ifNone: [self assert: false].
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormDefinition].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_energy_survey_recursive;
					processXMLSections;
					yourself.