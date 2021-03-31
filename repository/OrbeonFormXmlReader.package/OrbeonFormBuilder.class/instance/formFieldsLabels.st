orbeon fields
formFieldsLabels
	"The receiver answer a Dictionary with all fields label of all components of the form <xmlDocument>"
	| fieldsLabels labelNode |

	fieldsLabels := Dictionary new.
	labelNode := xmlDocument allElementsNamed: self dataFormatVersion xfInstanceResourcesXpath do: [:each | ((each includesAttribute: 'id') and: [(each attributeAt: 'id') = 'fr-form-resources']) ifTrue: [labelNode := each]]. "the node where labels are in '/xf:instance/resources/resource' "

	(labelNode findElementNamed: 'resource') elementsDo: [:each |  | originalLabel textNode |
		textNode := each elementAt: 'label' ifAbsent: [nil].
		originalLabel := textNode 
			ifNil: ['No Label'] 
			ifNotNil: [textNode rawContentString 
							ifEmpty: ['No Label'] 
							ifNotEmpty: [:value | value]
						].
		fieldsLabels at: each name put: originalLabel].

	^fieldsLabels