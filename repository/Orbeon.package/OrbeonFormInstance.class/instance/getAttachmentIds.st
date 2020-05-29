other
getAttachmentIds
	"Answer a collection with all IDs of receiver's attachments.
	The attachment's names: <instanceId>-<fileId> "

	^((self getAttachmentFieldNames collect: [:each | self valueAt: each]) reject: [:each | each isNil or: [each isEmpty]])
			collect: [:each | id, '-', (each subStrings: '/') last] "<instanceId>-<fileId> "