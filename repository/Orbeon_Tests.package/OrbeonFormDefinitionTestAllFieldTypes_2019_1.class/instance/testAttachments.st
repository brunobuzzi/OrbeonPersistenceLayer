other
testAttachments

	self assert: form customAttachment equals: '9428f017fea4876d39f15cea48ea78b5e2bb822b.bin'.

	self assert: (form attachments at: 'image1') fileId equals: '1d7b2864a55661c99f577e0506c55d3c6f0a915d.bin'.
	self assert: (form attachments at: 'image1') class equals: OrbeonFileName.
	self assert: (form attachments at: 'image2') fileId equals: '3a5b75e6be2360d278b516cc91954bbe95d6be3c.bin'.
	self assert: (form attachments at: 'image2') class equals: OrbeonFileName.
	self assert: (form attachments at: 'otherAttachment') fileId equals: '1f47717cf4f04a73b3d58520f9f30a2fabbbb0bb.bin'.
	self assert: (form attachments at: 'otherAttachment') class equals: OrbeonFileName.
	self assert: (form attachments at: 'image3') fileId equals: '3fd2db0028d3a793dc020fab2203f610b6924d8c.bin'.
	self assert: (form attachments at: 'image1') class equals: OrbeonFileName.

	self assert: (form attachments at: 'control-5') class equals: OrbeonAnnotationFileName.
	self assert: (form attachments at: 'control-5') imageFileName class equals: OrbeonFileName.
	self assert: (form attachments at: 'control-5') annotationFileName class equals: OrbeonFileName.
	self assert: (form attachments at: 'control-5') imageFileName fileId equals: '4de14834755ca5d91838a4f06072f5dd4f33551f.bin'.
	self assert: (form attachments at: 'control-5') annotationFileName fileId equals: '48714c83d54676cbe8861db428d002b3c59a7a2d.bin'.