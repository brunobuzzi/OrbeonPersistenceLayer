attachments
fileoutDefinitionAttachmentOn: path defintionId: definitionId fileId: fileId version: version
	| result |

	result := self execute: (sqlReader sqlDumpFileDefinitionAttachmentOn: path definitionId: definitionId fileId: fileId version: version).

	^result