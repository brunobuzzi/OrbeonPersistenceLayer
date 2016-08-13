other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test'.
	form xmlString: self getXMLFormDefinition;
		title: 'Test';
		processXMLDefinition.