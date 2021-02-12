publish
publish
	"The receiver is being publish with the following properties.
	1) Is available
	2) Is not a draft
	3) Available node set to true"

	self isAvailable: true. "1"
	definition isAvailable: true. "1"

	definition draft: 'N'. "2"
	definition version: version.
	definition definition: self.

	self setAvailableNodeWith: 'true'. "3"
	definition setAvailableNodeWith: 'true'. "3"