other
doIt
	"This service is called when Orbeon requires a Custom PDF of a form or the Form Instance has any attachments and the user has clicked -Send-"
	| definition gsFile |

	restHandler requestContext response contentType: WAMimeType applicationOctetStream.

	definition := self getOrbeonApplicationClass formDefinitionNamed: self getFormName in: self getApplicationName.

	gsFile := GsFile openOnServer: ((self apiConfiguration getPublishedDefinitionsPathFor: self getFormName in: self getApplicationName), definition id, '-', fileId) mode: 'rb'.
	fileContents := gsFile contentsAsUtf8.

	gsFile close.

	^fileContents