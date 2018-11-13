other
createFormDefinition

	^(OrbeonPublishedFormDefinition newNamed: 'test-3' inAppNamed: 'agesic')
			xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_test_3;
			id: UUID new asString;
			title: 'Test 3';
			processXMLDefinitionFor: self getOrbeonXmlXpathUpto2017_1;
			yourself