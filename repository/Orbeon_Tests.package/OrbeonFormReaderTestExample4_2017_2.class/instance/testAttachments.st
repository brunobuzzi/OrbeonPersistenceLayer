definition tests
testAttachments
	| fieldsNodes document image annotation |

	fieldsNodes := reader getAllFormFieldsIn: reader xmlDocument.
	document := fieldsNodes detect: [:e | (e attributeAt: 'id') = 'fileAttachment-control'].
	image := fieldsNodes detect: [:e | (e attributeAt: 'id') = 'imageAttachment-control'].
	annotation := fieldsNodes detect: [:e | (e attributeAt: 'id') = 'imageAnnotation-control'].

	self assert: (reader isAttachmentField: document).
	self assert: (reader isAttachmentField: image).

	fieldsNodes remove: document.
	fieldsNodes remove: image.
	fieldsNodes remove: annotation.

	self assert: (fieldsNodes allSatisfy: [:e | (reader isAttachmentField: e) not])