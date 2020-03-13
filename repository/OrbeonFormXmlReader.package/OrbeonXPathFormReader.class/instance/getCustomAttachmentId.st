attachments
getCustomAttachmentId
	"The receiver answer the id of the Custom PDF attachment. This custom PDF is used to create the PDF of the Form"
	| pdfQueryNode pdfNode |

	pdfQueryNode := xmlDocument xPath: self defaultOrbeonXpathVersion xfInstanceAttachmentsPdf.
	pdfQueryNode ifEmpty: [^nil].

	pdfNode := pdfQueryNode last.

	^pdfNode rawContentString 
		ifEmpty: [nil]
		ifNotEmpty: [:value | (value subStrings: '=') last]