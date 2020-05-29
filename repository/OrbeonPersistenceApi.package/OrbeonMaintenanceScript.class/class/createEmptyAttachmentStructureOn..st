os files
createEmptyAttachmentStructureOn: basePath
	"WARNING: this method is only intented for development"

	System performOnServer: 'cd ', basePath, '; mkdir temp; mkdir drafts; mkdir instances; mkdir definitions; cd definitions/; mkdir saved; mkdir published'.