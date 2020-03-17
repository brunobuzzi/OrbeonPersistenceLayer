attachments
migrateDefinitionAttachmentsOf: anOrbeonFormDefinition
	"The receiver export all attachments of <anOrbeonFormDefinition> to the file system.
	This is done directly from the relational database. For exmaple in MySql is done via: select file_content INTO DUMPFILE 'fileName'.
	Note: the files are stored in the relational database host. If the relational database and GemStone/S are in different host a manual file copy must be performed from one host to another.
	The relational database host must mimic the file structure where the Orbeon attachments are stored in GemStone/S:
	../temp
	../drafts
	../instances
	../definitions/saved
	../definitions/published"

	anOrbeonFormDefinition attachments do: [:orbeonFileName | | savedPath publishedPath |
			savedPath := self getOrbeonWebServerConfiguration getSavedDefinitionsPathFor: anOrbeonFormDefinition formName in: anOrbeonFormDefinition getApplicationName.
			publishedPath := self getOrbeonWebServerConfiguration getPublishedDefinitionsPathFor: anOrbeonFormDefinition formName in: anOrbeonFormDefinition getApplicationName. 

			(anOrbeonFormDefinition getFieldNamed: orbeonFileName fieldName) isAnnotationField
			ifFalse: [(Array with: savedPath with: publishedPath) do: [:eachPath | 
							self fileoutDefinitionAttachmentOn: eachPath defintionId: orbeonFileName definitionId fileId: orbeonFileName fileId version: anOrbeonFormDefinition version].
			]
			ifTrue: [(Array with: savedPath with: publishedPath) do: [:eachPath | 
							self fileoutDefinitionAttachmentOn: eachPath defintionId: orbeonFileName imageFileNameDefinitionId fileId: orbeonFileName imageFileNameFileId version: anOrbeonFormDefinition version.
							self fileoutDefinitionAttachmentOn: eachPath defintionId: orbeonFileName annotationFileNameDefinitionId fileId: orbeonFileName annotationFileNameFileId version: anOrbeonFormDefinition version].
			].
		].