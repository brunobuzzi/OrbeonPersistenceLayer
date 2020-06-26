service-put
receiveAndSaveFileForInstance: formName app: app instanceId: instanceId fileId: fileId dataFormat: dataFormatVersion valid: aBoolean
	"This service is called from Orbeon Form Runner -new/edit- when a file is uploaded to a Form Instance.
	When the form is sent then all form's attachments are sent to this service"
	| apiOperation |
	<put>
	<path: '/crud/{2}/{1}/data/{3}/{4}?valid={6}&data-format-version={5}'>

	apiOperation := OrbeonReceiveAndSaveInstanceFileApi newWithId: instanceId.
	apiOperation fileId: fileId;
		fileContents: self requestContext request rawBody;
		appName: app;
		formName: formName.

	^apiOperation doIt