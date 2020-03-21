db attachments
fileoutInstanceAttachmentOn: path defintionId: definitionId fileId: fileId version: version
	| result |

	result := self execute: (sqlReader sqlDumpFileInstanceAttachmentOn: path definitionId: definitionId fileId: fileId version: version).

	^result