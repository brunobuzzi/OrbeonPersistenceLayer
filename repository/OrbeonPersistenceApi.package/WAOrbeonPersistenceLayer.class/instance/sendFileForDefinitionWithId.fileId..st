service-get
sendFileForDefinitionWithId: definitionId fileId: fileId
	"This service is called by Orbeon Form Builder to get/obtain the attached file with id <fileId> for the Form Definition <definitionId>.
	The service answer an octet stream to the caller."
	| apiOperation |
	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/orbeon/builder/data/{1}/{2}'>

	apiOperation := OrbeonSendFormDefinitionFileApi newFor: self id: definitionId.
	apiOperation fileId: fileId.

	^apiOperation doIt