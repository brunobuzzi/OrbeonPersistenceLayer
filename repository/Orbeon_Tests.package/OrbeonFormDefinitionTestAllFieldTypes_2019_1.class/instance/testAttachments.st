other
testAttachments

	self assert: form customAttachment equals: '9428f017fea4876d39f15cea48ea78b5e2bb822b'.

	self assert: (form attachments at: 'image1') equals: form id, '-1d7b2864a55661c99f577e0506c55d3c6f0a915d'.
	self assert: (form attachments at: 'image2') equals: form id, '-3a5b75e6be2360d278b516cc91954bbe95d6be3c'.
	self assert: (form attachments at: 'otherAttachment') equals: form id, '-1f47717cf4f04a73b3d58520f9f30a2fabbbb0bb'.
	self assert: (form attachments at: 'image3') equals: form id, '-3fd2db0028d3a793dc020fab2203f610b6924d8c'.