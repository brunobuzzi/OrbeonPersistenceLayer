Accessing
getAttachmentFields
	"The receiver answer a collection of <FormFieldDefinition> where each field is an attachment component"

	^self fieldDefinitions select: [:each | each isAttachmentField]