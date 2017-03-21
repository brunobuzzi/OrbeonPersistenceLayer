service-put
receiveAndPublishFileFor: formName app: app documentId: documentId fileId: fileId
	"This service is called when a user click -Publish- form in Orbeon Form Builder and the form definition has attached files.
	The Form Definition is <formName> in the Orbeon Application <app> where the id of the form definition is <documentId> and the attached file id is <fileId>.
	This service is called for each attached files in the Form Definition. 
	The attached file is stored in the repository"
	| gsFile path |
	<put>
	<path: '/crud/{2}/{1}/form/{4}?document={3}'>

	path := self apiConfiguration getPublishedDefinitionsPathFor: formName in: app.

	(GsFile existsOnServer: path) ifFalse: [DirectoryStructureNotPresentException signal: 'Directory Structure to Store Forms attachments on disk has not been created'].

	gsFile := GsFile open: (path, documentId, '-',fileId) mode: 'wb' onClient: false.

	gsFile
		nextPutAll: self requestContext request rawBody;
		flush;
		close.