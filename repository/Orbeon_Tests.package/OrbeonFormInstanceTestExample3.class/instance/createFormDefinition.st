other
createFormDefinition

	^(OrbeonPublishedFormDefinition app: 'agesic' form: 'test-3')
			xmlString: OrbeonFormDefinitionTemplate form_test_3;
			id: UUID new asString;
			title: 'Test 3';
			processXMLDefinition;
			yourself