service-get
sendFileForInstance: formName app: app instanceId: instanceId fileId: fileId
	"This service is called when rendering the form Instance in Form Instance page"
	| apiOperation |
	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/{2}/{1}/data/{3}/{4}'>

	apiOperation := OrbeonSendFormInstanceFileApi newFor: self id: instanceId.
	apiOperation fileId: fileId;
		appName: app;
		formName: formName.

	self requestContext response contentType: WAMimeType applicationOctetStream.

	^apiOperation doIt