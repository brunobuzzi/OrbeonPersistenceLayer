other
createPublishedFormDefinition

	^OrbeonPublishedFormDefinition new
		id: id;
		application: application;
		formName: formName;
		xmlString: xmlString;
		title: self title;
		description: self description;
		yourself