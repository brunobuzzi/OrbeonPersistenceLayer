db attachments
migrateDefinitionCustomAttachmentOf: anOrbeonFormDefinition
	"The receiver export all attachments of <anOrbeonFormDefinition> to the file system.
	This is done directly from the relational database. For exmaple in MySql is done via: select file_content INTO DUMPFILE 'fileName'.
	Note: the files are stored in the relational database host. If the relational database and GemStone/S are in different host a manual file copy must be performed from one host to another.
	The relational database host must mimic the file structure where the Orbeon attachments are stored in GemStone/S:
	../temp
	../drafts
	../instances
	../definitions/saved
	../definitions/published"

	anOrbeonFormDefinition customAttachment ifNotNil: [ | savedPath publishedPath definitionId fileId |
			savedPath := self getOrbeonWebServerConfiguration getSavedDefinitionsPathFor: anOrbeonFormDefinition formName in: anOrbeonFormDefinition getApplicationName.
			publishedPath := self getOrbeonWebServerConfiguration getPublishedDefinitionsPathFor: anOrbeonFormDefinition formName in: anOrbeonFormDefinition getApplicationName. 

			definitionId := (anOrbeonFormDefinition printCompleteCustomAttachmentId subStrings: '-') first.
			fileId := (anOrbeonFormDefinition printCompleteCustomAttachmentId subStrings: '-') last.

			self fileoutDefinitionAttachmentOn: savedPath defintionId: definitionId fileId: fileId version: anOrbeonFormDefinition version.
			self fileoutDefinitionAttachmentOn: publishedPath defintionId: definitionId fileId: fileId version: anOrbeonFormDefinition version.
		].