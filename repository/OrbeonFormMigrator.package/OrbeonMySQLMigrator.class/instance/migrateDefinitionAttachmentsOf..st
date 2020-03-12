attachments
migrateDefinitionAttachmentsOf: anOrbeonFormDefinition
	"The receiver export all attachments of <anOrbeonFormDefinition> to the file system.
	This is done directly from MySql via: select file_content INTO DUMPFILE 'fileName'.
	Note: the files are stored in MySql host. If MySql and GemStone/S are in different host a manual file copy must be performed from MySql host to GemStone/S host.
	The MySql host must mimic the file structure where the Orbeon attachments are stored in GemStone/S:
	../temp
	../drafts
	../instances
	../definitions/saved
	../definitions/published"

	anOrbeonFormDefinition attachments do: [:defIdfileId | | path fileId definitionId |
			path := self defaultOrbeonApiConfiguration getSavedDefinitionsPathFor: anOrbeonFormDefinition formName in: anOrbeonFormDefinition getApplicationName.
			definitionId := (defIdfileId subStrings: '-') first.
			fileId := (defIdfileId subStrings: '/') last.
			self getOrbeonHandler fileoutDefinitionAttachmentOn: path defintionId: definitionId fileId: fileId version: anOrbeonFormDefinition version.
		].