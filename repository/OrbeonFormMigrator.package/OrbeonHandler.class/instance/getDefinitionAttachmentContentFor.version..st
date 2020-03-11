attachments
getDefinitionAttachmentContentFor: fileId version: version

	^self execute: (mySqlReader sqlGetDefinitionAttachmentContentFor: fileId version: version)