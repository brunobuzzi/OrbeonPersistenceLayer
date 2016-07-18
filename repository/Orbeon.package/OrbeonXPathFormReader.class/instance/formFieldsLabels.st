orbeon fields
formFieldsLabels
	"The receiver answer a Dictionary with all fields label of all components of the form <xmlDocument>"
	| fieldsLabels |

	fieldsLabels := Dictionary new.

	(xmlDocument xPath: '//xf:instance[@id=''fr-form-resources'']/resources//resource/*') do: [:each |  | originalLabel textNode |
		textNode := each elementAt: 'label' ifAbsent: [nil].
		originalLabel := textNode ifNil: ['No Label'] 
			ifNotNil: [textNode stringNodes 
							ifEmpty: ['No Label'] 
							ifNotEmpty: [:collection | collection first string].
						].
		fieldsLabels at: each name put: originalLabel].

	^fieldsLabels