other
doIt
	"This service receives a file with id <fileId> from Orbeon Form Builder when the a user clicked -Save-.
	The file was uploaded into a Form Definition as a Custom PDF or as direct file Upload.
	A direct file upload is when a File Attachment is added to a Form Definition and a concrete file is also uploaded"
	| definition gsFile |

	definition := self getOrbeonApplicationClass getAnyDefinitionWithId: id ifNone: [^self storeFileOnTempPath].

	gsFile := GsFile open: ((self defaultOrbeonApiConfiguration getSavedDefinitionsPathFor: definition formName in: definition getApplicationName), id, '-', fileId, '.bin') mode: 'wb' onClient: false.

	gsFile
		nextPutAll: fileContents;
		flush;
		close.