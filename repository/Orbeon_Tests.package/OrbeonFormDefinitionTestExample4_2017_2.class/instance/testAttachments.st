other
testAttachments
	| attachments |

	attachments := form getAttachmentFields.

	self assert: (attachments size = 3).

	self assert: (form fieldDefinitionsDetect: [:e | e name =  'fileAttachment']) isAttachmentField.
	self assert: (form fieldDefinitionsDetect: [:e | e name =  'imageAttachment']) isAttachmentField.
	self assert: (form fieldDefinitionsDetect: [:e | e name =  'imageAnnotation']) isAttachmentField.

	self assert: ((form getAttachmentIdFor: 'fileAttachment') = (form id, '-bf85b292873cc3a16998f1079bffe4e4225dbcae')).
	self assert: ((form getAttachmentIdFor: 'imageAttachment') = (form id, '-712d1a563c8150a94d6e6518984c9864d3c3af95')).
	self assert: ((form getAttachmentIdFor: 'imageAnnotation') = nil).