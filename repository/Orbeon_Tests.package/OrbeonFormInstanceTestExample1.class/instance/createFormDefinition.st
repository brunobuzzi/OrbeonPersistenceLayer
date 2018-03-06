other
createFormDefinition

	^(OrbeonPublishedFormDefinition app: 'agesic' form: 'test')
			xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_test;
			id: UUID new asString;
			title: 'Test';
			processXMLDefinitionFor: OrbeonXmlPath2016_1 new;
			yourself