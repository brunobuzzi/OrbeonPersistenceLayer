other
createFormInstanceWithId: stringId on: anOrbeonFormDefinition

	^(OrbeonFormInstance newFor: anOrbeonFormDefinition withId: stringId)
				xmlString: OrbeonFormInstanceTemplate form_energy_survey_recursive;
				processXML;
				yourself.