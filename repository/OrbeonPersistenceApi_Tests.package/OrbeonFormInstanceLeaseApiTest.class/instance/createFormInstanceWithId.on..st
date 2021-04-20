other
createFormInstanceWithId: stringId on: anOrbeonFormDefinition

	^(OrbeonFormInstance newFor: anOrbeonFormDefinition withId: stringId)
				xmlString: self newInstanceTemplate formInstance_agesic_energy_recursive;
				processXML;
				yourself.