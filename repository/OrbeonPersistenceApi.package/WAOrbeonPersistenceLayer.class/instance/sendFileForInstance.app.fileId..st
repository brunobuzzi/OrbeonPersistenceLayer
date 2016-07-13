service-get
sendFileForInstance: formName app: app fileId: fileId
	"This service is called when Orbeon requires a Custom PDF of a form or the Form Instance has any attachments and the user has clicked -Send-"
	| definition contents gsFile |
	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/{2}/{1}/form/{3}'>

	self requestContext response contentType: WAMimeType applicationOctetStream.

	definition := self getOrbeonApplicationClass formDefinitionNamed: formName in: app.

	gsFile := GsFile openOnServer: ((self apiConfiguration getPublishedDefinitionsPathFor: formName in: app), definition id, '-', fileId) mode: 'rb'.
	contents := gsFile contentsAsUtf8.

	gsFile close.

	^contents