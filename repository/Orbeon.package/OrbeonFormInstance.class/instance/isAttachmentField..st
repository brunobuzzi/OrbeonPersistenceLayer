other
isAttachmentField: fieldName
	"Answer whether or not the field named <fieldName> is an attachment field"

	^(definition getFieldNamed: fieldName) isAttachmentField