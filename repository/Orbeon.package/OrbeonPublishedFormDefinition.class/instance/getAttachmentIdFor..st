other
getAttachmentIdFor: fieldName

	^attachments at: fieldName ifAbsent: [nil]