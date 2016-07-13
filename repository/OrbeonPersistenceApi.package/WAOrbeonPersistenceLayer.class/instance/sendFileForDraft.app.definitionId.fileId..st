service-get
sendFileForDraft: formName app: app definitionId: definitionId fileId: fileId
	"This service is called when rendering the Draft of the form in Form Instance page"
	| contents gsFile |
	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/{2}/{1}/draft/{3}/{4}'>

	self requestContext response contentType: WAMimeType applicationOctetStream.

	gsFile := GsFile openOnServer: ((self apiConfiguration getDraftsPathFor: formName in: app), definitionId, '-', fileId) mode: 'rb'.
	contents := gsFile contentsAsUtf8.

	gsFile close.

	^contents