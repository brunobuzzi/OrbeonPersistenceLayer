other
createFormDefinition

	^(OrbeonPublishedFormDefinition app: 'agesic' form: 'test')
			xmlString: OrbeonFormDefinitionTemplate form_test;
			id: UUID new asString;
			processXMLDefinition;
			yourself