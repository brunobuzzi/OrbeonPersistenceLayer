db attachments
getDefinitionAttachmentContentFor: fileId version: version

	^self execute: (sqlReader sqlGetDefinitionAttachmentContentFor: fileId version: version)