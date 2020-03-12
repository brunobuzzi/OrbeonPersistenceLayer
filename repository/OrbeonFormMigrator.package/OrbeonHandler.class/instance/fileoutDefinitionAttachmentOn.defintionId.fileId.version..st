attachments
fileoutDefinitionAttachmentOn: path defintionId: definitionId fileId: fileId version: version
	| result |
self halt.
	result := self execute: (mySqlReader sqlDumpFileDefinitionAttachmentOn: '' definitionId: definitionId fileId: fileId version: version).
	self execute: 'mv /var/lib/mysql/orbeon/', definitionId, '-', fileId, ' ', path. 

	^result