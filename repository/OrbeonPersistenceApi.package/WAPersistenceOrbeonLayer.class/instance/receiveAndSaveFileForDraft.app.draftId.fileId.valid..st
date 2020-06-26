service-put
receiveAndSaveFileForDraft: formName app: app draftId: draftId fileId: fileId valid: aBoolean
	"This service is called from Orbeon Form Runner -new/edit- when a file is uploaded (and autosave is -true-) to a Form Instance.
	When the form is autosaved then all form's attachments are sent to this service "
	| apiOperation |
	<put>
	<path: '/crud/{2}/{1}/draft/{3}/{4}?valid={5}'>

	apiOperation := OrbeonReceiveAndSaveDraftFileApi newWithId: draftId.
	apiOperation fileId: fileId;
		fileContents: self requestContext request rawBody;
		appName: app;
		formName: formName.

	^apiOperation doIt