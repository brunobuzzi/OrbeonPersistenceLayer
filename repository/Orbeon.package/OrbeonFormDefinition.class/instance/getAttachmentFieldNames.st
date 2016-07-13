Accessing
getAttachmentFieldNames
	"The receiver answer a collection of <Strings> where each string is the name of a attachment field"

	^self getAttachmentFields collect: [:each | each name]