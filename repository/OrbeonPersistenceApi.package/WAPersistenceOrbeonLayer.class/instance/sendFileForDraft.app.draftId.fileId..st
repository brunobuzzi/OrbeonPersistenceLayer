service-get
sendFileForDraft: formName app: app draftId: draftId fileId: fileId
	"This service is called when rendering the Draft of the form in Form Instance page"
	| apiOperation |
	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/{2}/{1}/draft/{3}/{4}'>

	apiOperation := OrbeonSendFormDraftFileApi newFor: self id: draftId.
	apiOperation fileId: fileId;
		appName: app;
		formName: formName.

	self requestContext response contentType: WAMimeType applicationOctetStream.

	^apiOperation doIt