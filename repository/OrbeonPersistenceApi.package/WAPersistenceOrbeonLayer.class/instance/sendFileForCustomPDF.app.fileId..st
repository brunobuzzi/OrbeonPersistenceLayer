service-get
sendFileForCustomPDF: formName app: app fileId: fileId
	"This service is called when Orbeon requires a Custom PDF of a form or the Form Instance has any attachments and the user has clicked -Send-"
	| apiOperation |
	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/{2}/{1}/form/{3}'>

	apiOperation := OrbeonSendCustomPdfFileApi new.
	apiOperation fileId: fileId;
		appName: app;
		formName: formName.

	self requestContext response contentType: WAMimeType applicationOctetStream.

	^apiOperation doIt