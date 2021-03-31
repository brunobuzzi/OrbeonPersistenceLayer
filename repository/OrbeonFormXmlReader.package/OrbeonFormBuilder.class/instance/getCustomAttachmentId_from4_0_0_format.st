data format version
getCustomAttachmentId_from4_0_0_format
	"The receiver answer the id of the Custom PDF attachment. This custom PDF is used to create the PDF of the Form"
	| pdfQueryNode pdfNode |

	pdfQueryNode := xmlDocument xPath: self dataFormatVersion xfInstanceAttachmentsPdf.
	pdfQueryNode ifEmpty: [^nil].

	pdfNode := pdfQueryNode last.

	^pdfNode rawContentString 
		ifEmpty: [nil]
		ifNotEmpty: [:value | (value subStrings: '=') last]

"the format of the Custom Attachment is:
 'file:/var/cache/tomcat/temp/xforms_upload_4574241681918696094.tmp?filename=Dec_Jurada_Miem.pdf&amp;mediatype=application%2Fpdf&amp;size=85471&amp;mac=e483cd29568e074402e8461223977d0ac23be915'
"