service-put
receiveAndSaveFileForDefinitionWithId: definitionId fileId: fileId valid: aBoolean
	"This service receives a file with id <fileId> from Orbeon Form Builder when the a user clicked -Save-.
	The file was uploaded into a Form Definition as a Custom PDF or as direct file Upload.
	A direct file upload is when a File Attachment is added to a Form Definition and a concrete file is also uploaded"
	| apiOperation |
	<put>
	<path: '/crud/orbeon/builder/data/{1}/{2}.bin?valid={3}'>

	apiOperation := OrbeonReceiveAndSaveDefinitionFileApi newFor: self id: definitionId.
	apiOperation fileId: fileId;
		fileContents: self requestContext request rawBody.
		
	^apiOperation doIt