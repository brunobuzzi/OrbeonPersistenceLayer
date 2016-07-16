other
createFormDefinition

	^(OrbeonPublishedFormDefinition app: 'agesic' form: 'test-2')
			xmlString: OrbeonFormDefinitionTemplate form_test_2;
			id: UUID new asString;
			processXMLDefinition;
			yourself