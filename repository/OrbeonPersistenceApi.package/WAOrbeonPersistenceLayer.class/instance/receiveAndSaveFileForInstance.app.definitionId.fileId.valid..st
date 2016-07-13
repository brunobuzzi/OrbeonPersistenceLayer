service-put
receiveAndSaveFileForInstance: formName app: app definitionId: definitionId fileId: fileId valid: aBoolean
	"This service is called from Orbeon Form Runner -new/edit- when a file is uploaded to a Form Instance.
	When the form is sent then all form's attachments are sent to this service"
	| stream gsFile |
	<put>
	<path: '/crud/{2}/{1}/data/{3}/{4}?valid={5}'>

	gsFile := GsFile open: ((self apiConfiguration getInstancesPathFor: formName in: app), definitionId, '-', fileId) mode: 'wb' onClient: false.

	gsFile
		nextPutAll: self requestContext request rawBody;
		flush;
		close.