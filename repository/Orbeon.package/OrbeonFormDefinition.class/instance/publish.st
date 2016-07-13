other
publish

	self available: 'true'.
	isPublished := true.

	instanceDefinition draft: 'N'.
	instanceDefinition isPublished: true.
	instanceDefinition version: version.
	instanceDefinition xmlString: xmlString.
	instanceDefinition definition: self.