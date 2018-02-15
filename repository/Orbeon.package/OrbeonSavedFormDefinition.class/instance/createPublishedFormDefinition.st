other
createPublishedFormDefinition

	^OrbeonPublishedFormDefinition new
		id: id;
		application: application;
		formName: formName;
		title: self title;
		description: self description;
		xmlString: xmlString;
		yourself