db attachments
migrateInstanceAttachmentsOf: anOrbeonFormDefinition
	"The receiver export all attachments of <anOrbeonFormDefinition> instances to the file system.
	This is done directly from the relational database. For exmaple in MySql is done via: select file_content INTO DUMPFILE 'fileName'.
	Note: the files are stored in the relational database host. If the relational database and GemStone/S are in different host a manual file copy must be performed from one host to another.
	The relational database host must mimic the file structure where the Orbeon attachments are stored in GemStone/S:
	../temp
	../drafts
	../instances
	../definitions/saved
	../definitions/published"

	anOrbeonFormDefinition instancesDo:[:eachInstance |
		eachInstance getAttachmentIds do: [:instIdFileId | | path instanceId fileId |
			path := systemRoot getInstancesPathFor: anOrbeonFormDefinition formName in: anOrbeonFormDefinition getApplicationName.
			instanceId := eachInstance id.
			fileId := (instIdFileId subStrings: '-') last.
			self fileoutInstanceAttachmentOn: path defintionId: instanceId fileId: fileId version: anOrbeonFormDefinition version.
		]
	].