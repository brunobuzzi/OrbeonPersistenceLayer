service-get
sendFileForInstance: formName app: app definitionId: definitionId fileId: fileId
	"This service is called when rendering the form Instance in Form Instance page"
	| contents gsFile |
	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/{2}/{1}/data/{3}/{4}'>

	self requestContext response contentType: WAMimeType applicationOctetStream.

	gsFile := GsFile openOnServer: ((self apiConfiguration getInstancesPathFor: formName in: app), definitionId, '-', fileId) mode: 'rb'.
	contents := gsFile contentsAsUtf8.

	gsFile close.

	^contents