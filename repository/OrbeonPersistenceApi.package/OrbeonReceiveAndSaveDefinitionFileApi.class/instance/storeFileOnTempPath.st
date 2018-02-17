other
storeFileOnTempPath
	"The receiver store the file with id <fileId> belonging to the form definition with id <definitionId> in the temporary path.
	This method is called when a Form Definition has attachments and is save at once with the attachments.
	In this case the OrbeonFormDefinition has not been created and we can not get the current path to store files so we store them in the temp path.
	See issue #37 and is caused because Orbeon first call a service to store attachments and then call a service to store XML definition"
	| gsFile |

	gsFile := GsFile open: (self apiConfiguration getTempPath,'/', id, '-', fileId, '.bin') mode: 'wb' onClient: false.

	gsFile
		nextPutAll: self requestContext request rawBody;
		flush;
		close.