attachments
fileoutInstanceAttachmentOn: path defintionId: definitionId fileId: fileId version: version
	| result |

	result := self execute: (mySqlReader sqlDumpFileInstanceAttachmentOn: path definitionId: definitionId fileId: fileId version: version).
	self execute: 'mv /var/lib/mysql/orbeon/', definitionId, '-', fileId, ' ', path. 

	^result