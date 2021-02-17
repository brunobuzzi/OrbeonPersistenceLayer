other
setUp
	| definition |

	self getOrbeonWebServerConfiguration setOrbeonFormReaderTo2017_2.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure.].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_energy_survey_recursive;
					yourself.

	form processXML.
"	form	processXMLSections;"