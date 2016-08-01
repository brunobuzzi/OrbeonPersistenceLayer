attachments
getCustomAttachmentId
	"The receiver answer the id of the Custom PDF attachment. This custom PDF is used to create the PDF of the Form"
	| pdfQueryNode pdfNode |

	pdfQueryNode := xmlDocument xPath: '//xf:instance/attachments/pdf'.
	pdfQueryNode ifEmpty: [^nil].

	pdfNode := pdfQueryNode last.

	^pdfNode stringNodes 
		ifEmpty: [nil]
		ifNotEmpty: [:collection | (collection last string subStrings: '=') last]