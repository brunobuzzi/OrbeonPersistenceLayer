form instances
getAttachmentIdFor: fieldName

	^attachments at: fieldName ifAbsent: [nil]