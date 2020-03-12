attachments path
existDirectoryStructureForAttachments

	(GsFile existsOnServer: self getTempPath) 
		ifFalse: [DirectoryStructureNotPresentException signal: 'Directory Structure to Store Forms attachments on disk has not been created'].

	^true