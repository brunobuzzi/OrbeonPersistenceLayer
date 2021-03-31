attachments
isAnnotationField: fieldNode
	"'fr:wpaint' - (image annotation) - the attachment is an image to make annotations."

	^(fieldNode xPath: 'name()') = self defaultOrbeonXpathVersion frWpaintXpath