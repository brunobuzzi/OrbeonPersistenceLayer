other
testAttachments

	self assert: form customAttachment equals: 'e483cd29568e074402e8461223977d0ac23be915'.

	self assert: (form attachmentsAt: 'fileAttachment') fileId equals: 'bf85b292873cc3a16998f1079bffe4e4225dbcae'.
	self assert: (form attachmentsAt: 'imageAttachment') fileId equals: '712d1a563c8150a94d6e6518984c9864d3c3af95'.