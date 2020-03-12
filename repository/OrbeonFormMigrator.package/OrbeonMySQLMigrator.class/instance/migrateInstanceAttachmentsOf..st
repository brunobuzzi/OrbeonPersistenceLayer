attachments
migrateInstanceAttachmentsOf: anOrbeonFormDefinition
	"The receiver export all attachments of <anOrbeonFormDefinition> instances to the file system.
	This is done directly from MySql via: select file_content INTO DUMPFILE 'fileName'.
	Note: the files are stored in MySql host. If MySql and GemStone/S are in different host a manual file copy must be performed from MySql host to GemStone/S host.
	The MySql host must mimic the file structure where the Orbeon attachments are stored in GemStone/S:
	../temp
	../drafts
	../instances
	../definitions/saved
	../definitions/published"

	anOrbeonFormDefinition instances do:[:eachInstance |
		eachInstance getAttachmentIds do: [:instIdFileId | | path instanceId fileId |
			path := self apiConfiguration getInstancesPathFor: anOrbeonFormDefinition formName in: anOrbeonFormDefinition getApplicationName.
			instanceId := (instIdFileId subStrings: '-') first.
			fileId := (instIdFileId subStrings: '/') last.
			self getOrbeonHandler fileoutInstanceAttachmentOn: path defintionId: instanceId fileId: fileId version: anOrbeonFormDefinition version.
		]
	].