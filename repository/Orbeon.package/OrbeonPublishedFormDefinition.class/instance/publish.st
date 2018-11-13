publish
publish

	self isAvailable: true.

	definition isAvailable: true.

	definition draft: 'N'.
	definition version: version.
	definition xmlString: xmlString.
	definition definition: self.

	self setAvailableNodeWith: 'true'.
	definition setAvailableNodeWith: 'true'.