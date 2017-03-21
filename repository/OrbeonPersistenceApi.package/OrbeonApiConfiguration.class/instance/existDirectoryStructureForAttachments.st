attachment path
existDirectoryStructureForAttachments

	(GsFile existsOnServer: self apiConfiguration getTempPath) 
		ifFalse: [DirectoryStructureNotPresentException signal: 'Directory Structure to Store Forms attachments on disk has not been created'].

	^true