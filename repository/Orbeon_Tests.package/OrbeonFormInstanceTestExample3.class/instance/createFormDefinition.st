other
createFormDefinition

	^(OrbeonPublishedFormDefinition app: 'agesic' form: 'test-3')
			xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_test_3;
			id: UUID new asString;
			title: 'Test 3';
			processXMLDefinitionFor: OrbeonXmlPathUpTo2017_1 new;
			yourself