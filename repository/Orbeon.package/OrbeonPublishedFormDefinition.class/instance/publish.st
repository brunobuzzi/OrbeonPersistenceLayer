publish
publish
	"The receiver is being publish with the following properties.
	1) Is available
	2) Is not a draft
	3) The saved version has the XML source as the receiver (if in Form Builder a changed is made but not saved then published)
	4) Available node set to true"

	self isAvailable: true. "1"
	definition isAvailable: true. "1"

	definition draft: 'N'. "2"
	definition version: version.
	definition xmlString: xmlString. "3"
	definition definition: self.

	self setAvailableNodeWith: 'true'. "4"
	definition setAvailableNodeWith: 'true'. "4"