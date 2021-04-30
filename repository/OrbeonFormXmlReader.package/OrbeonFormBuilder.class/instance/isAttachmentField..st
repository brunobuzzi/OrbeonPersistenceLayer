build definition attachments
isAttachmentField: fieldNode
	"'fr:attachment' - (regular attachments) the attachment can be removed from form instance.
	'fr:image-attachment' - (image attachments) - the attachment can be removed from form instance.
	'fr:wpaint' - (image annotation) - the attachment is an image to make annotations.
	class= 'fb-attachment' - (fixed image attachments) - attachment can NOT be removed from form instance"

	^((fieldNode xPath: 'name()') = self defaultOrbeonDataFormatVersion frAttachmentXpath)
		or:[((fieldNode xPath: 'name()') = self defaultOrbeonDataFormatVersion frImageAttachmentXpath)
			or:[((fieldNode xPath: 'name()') = self defaultOrbeonDataFormatVersion frWpaintXpath)
				or: [(fieldNode xPath: self defaultOrbeonDataFormatVersion containsClassFbAttachmentXpathFunction) notEmpty 
					or: [(fieldNode xPath: 'name()') = self defaultOrbeonDataFormatVersion frImageXpath]
				]
			]
		]