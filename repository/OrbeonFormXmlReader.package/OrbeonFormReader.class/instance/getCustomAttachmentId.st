attachments
getCustomAttachmentId
	"The receiver answer the id of the Custom PDF attachment. This custom PDF is used to create the PDF of the Form"
	| attachNode pdfNode |

	attachNode := xmlDocument findElementNamed: 'attachments'.
	attachNode ifNil: [^nil].
	pdfNode := attachNode findElementNamed: 'pdf'.
	pdfNode ifNil: [^nil].

	^pdfNode rawContentString 
		ifEmpty: [nil] 
		ifNotEmpty: [:value | (value subStrings: '=') last]