orbeon fields
formFieldsLabels
	"The receiver answer a Dictionary with all fields label of all components of the form <xmlDocument>"
	| fieldsLabels |

	fieldsLabels := Dictionary new.

	(xmlDocument xPath: systemRoot dataFormatVersion xfInstanceResourcesXpath) do: [:each |  | originalLabel textNode |
		textNode := each elementAt: 'label' ifAbsent: [nil].

		originalLabel := textNode 
			ifNil: ['No Label'] 
			ifNotNil: [textNode rawContentString 
							ifEmpty: ['No Label'] 
							ifNotEmpty: [:value | value].
						].
		fieldsLabels at: each name put: originalLabel].

	^fieldsLabels