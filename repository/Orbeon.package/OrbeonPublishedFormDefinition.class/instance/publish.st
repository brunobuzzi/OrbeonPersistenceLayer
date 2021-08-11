publish
publish
	"The receiver is being publish with the following properties.
	1) Is available
	2) Is not a draft
	3) Available node set to true"

	self isAvailable: true. 

	definition draft: 'N'. 
	definition version: version.
	definition definition: self.