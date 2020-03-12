attachments
fileoutDefinitionAttachmentOn: path defintionId: definitionId fileId: fileId version: version
	| result |

	result := self execute: (mySqlReader sqlDumpFileDefinitionAttachmentOn: path definitionId: definitionId fileId: fileId version: version).

	^result