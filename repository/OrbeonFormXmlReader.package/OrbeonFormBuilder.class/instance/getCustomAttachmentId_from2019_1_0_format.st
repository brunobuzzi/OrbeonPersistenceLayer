data format version
getCustomAttachmentId_from2019_1_0_format
	"The receiver answer the id of the Custom PDF attachment. This custom PDF is used to create the PDF of the Form"
	| pdfQueryNode pdfNode |

	pdfQueryNode := xmlDocument xPath: self dataFormatVersion xfInstanceAttachmentsPdf.
	pdfQueryNode ifEmpty: [^nil].

	pdfNode := pdfQueryNode last.

	^pdfNode rawContentString 
		ifEmpty: [nil]
		ifNotEmpty: [:value | (value subStrings: '/') last]

"the format of the Custom Attachment is:
 '/fr/service/persistence/crud/orbeon/builder/data/8dd1e85d8fe2168cbcdc260e902cf442ac541f85/9428f017fea4876d39f15cea48ea78b5e2bb822b.bin'
"