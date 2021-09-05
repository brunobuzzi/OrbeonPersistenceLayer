other
createFormInstanceWithId: stringId on: anOrbeonFormDefinition

	^(OrbeonFormInstance newFor: anOrbeonFormDefinition withId: stringId)
				xmlString: testRoot newInstanceTemplate formInstance_agesic_energy_recursive;
				buildForm;
				yourself.