other
doIt
	"This service is called when rendering the Draft of the form in Form Instance page"
	| gsFile |

	restHandler requestContext response contentType: WAMimeType applicationOctetStream.

	gsFile := GsFile openOnServer: ((self apiConfiguration getInstancesPathFor: self getFormName in: self getApplicationName), id, '-', fileId) mode: 'rb'.
	fileContents := gsFile contentsAsUtf8.

	gsFile close.

	^fileContents