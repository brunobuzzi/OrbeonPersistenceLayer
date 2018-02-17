other
doIt
	"This service is called by Orbeon Form Builder to get/obtain the attached file with id <fileId> for the Form Definition <id>.
	The service answer an octet stream to the caller."
	| definition gsFile |

	definition := self getOrbeonApplicationClass getAnyDefinitionWithId: id ifNone: [^NoOrbeonFormException signal: 'No form definition with id [', id, ']'].

	restHandler requestContext response contentType: WAMimeType applicationOctetStream.

	gsFile := GsFile openOnServer: ((self apiConfiguration getSavedDefinitionsPathFor: definition formName in: definition getApplicationName), id, '-',fileId) mode: 'rb'.
	fileContents := gsFile contentsAsUtf8.

	gsFile close.

	^fileContents