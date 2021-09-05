build definition attachments
isAttachmentField: fieldNode
	"'fr:attachment' - (regular attachments) the attachment can be removed from form instance.
	'fr:image-attachment' - (image attachments) - the attachment can be removed from form instance.
	'fr:wpaint' - (image annotation) - the attachment is an image to make annotations.
	class= 'fb-attachment' - (fixed image attachments) - attachment can NOT be removed from form instance"

	^((fieldNode xPath: 'name()') = systemRoot dataFormatVersion frAttachmentXpath)
		or:[((fieldNode xPath: 'name()') = systemRoot dataFormatVersion frImageAttachmentXpath)
			or:[((fieldNode xPath: 'name()') = systemRoot dataFormatVersion frWpaintXpath)
				or: [(fieldNode xPath: systemRoot dataFormatVersion containsClassFbAttachmentXpathFunction) notEmpty 
					or: [(fieldNode xPath: 'name()') = systemRoot dataFormatVersion frImageXpath]
				]
			]
		]