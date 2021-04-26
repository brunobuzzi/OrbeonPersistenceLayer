tests
testAttachments

	self assert: (form customAttachmentIsEqualTo: '9428f017fea4876d39f15cea48ea78b5e2bb822b.bin').

	self assert: (form attachmentsAt: 'image1') fileId equals: '56491db675169fcf219847f3a3f02ca4f4f5e0a1'.
	self assert: (form attachmentsAt: 'image1') class equals: OrbeonFileName.
	self assert: (form attachmentsAt: 'image2') fileId equals: '30574740332e9c5041e8c070f5cdcc6254fe6535'.
	self assert: (form attachmentsAt: 'image2') class equals: OrbeonFileName.
	self assert: (form attachmentsAt: 'otherAttachment') fileId equals: 'ba55469e935016a1584c9f5477656e23fffa93b5'.
	self assert: (form attachmentsAt: 'otherAttachment') class equals: OrbeonFileName.
	self assert: (form attachmentsAt: 'image3') fileId equals: '3de1ee4da671a9a241b9f4a1a06e55eae4b833ab'.
	self assert: (form attachmentsAt: 'image1') class equals: OrbeonFileName.

	self assert: (form attachmentsAt: 'control-5') class equals: OrbeonAnnotationFileName.
	self assert: (form attachmentsAt: 'control-5') imageFileName class equals: OrbeonFileName.
	self assert: (form attachmentsAt: 'control-5') annotationFileName class equals: OrbeonFileName.
	self assert: (form attachmentsAt: 'control-5') imageFileName fileId equals: 'b410189676b1dc313a389dfa16d5eb60d72e4160'.
	self assert: (form attachmentsAt: 'control-5') annotationFileName fileId equals: 'b410189676b1dc313a389dfa16d5eb60d72e4160'.