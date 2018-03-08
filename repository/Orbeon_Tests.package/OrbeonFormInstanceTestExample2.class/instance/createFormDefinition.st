other
createFormDefinition

	^(OrbeonPublishedFormDefinition app: 'agesic' form: 'test-2')
			xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_test_2;
			id: UUID new asString;
			title: 'Test 2';
			processXMLDefinitionFor: self getOrbeonXmlXpathUpto2017_1;
			yourself