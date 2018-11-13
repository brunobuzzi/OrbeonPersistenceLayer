other
setUp
	| definition application |

	self getOrbeonApplicationClass cache removeKey: 'agesic'.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure.].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_energy_survey_recursive;
					yourself.

	form processXML.
"	form	processXMLSections;"