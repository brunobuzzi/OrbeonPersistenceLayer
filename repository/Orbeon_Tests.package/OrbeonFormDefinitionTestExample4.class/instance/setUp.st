other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test'.
	form xmlString: self getXMLFormDefinition;
		id: self defaultFormId;
		title: 'Test';
		processXMLDefinition.