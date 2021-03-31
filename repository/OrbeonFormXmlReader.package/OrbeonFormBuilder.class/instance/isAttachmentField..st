orbeon fields
isAttachmentField: fieldNode

	^((fieldNode localName = 'attachment') "regular attachments - the attachment can be removed from form instance"
			or: [(fieldNode localName = 'image-attachment') or: [(fieldNode localName = 'image') or: [fieldNode localName = 'wpaint']]]) "image attachments - the attachment can be removed from form instance"
				or: [(fieldNode attributeAt: 'class' ifAbsent: [^false]) includesSubstring: 'fb-attachment'] "fixed image attachments - attachment can NOT be removed from form instance"