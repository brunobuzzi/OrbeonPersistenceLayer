other
createFormDefinition2

	^(OrbeonPublishedFormDefinition app: 'agesic' form: 'test')
			xmlString: self currentDefinition;
			id: UUID new asString;
			title: 'Test';
			processXMLDefinition;
			yourself