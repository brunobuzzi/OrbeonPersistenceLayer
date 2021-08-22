other
testDoIt
	| path result |

	path := testRoot getInstancesPathFor: formName in: app.
	newFile := GsFile open: (path, formId, '-', fileId) mode: 'wb' onClient: false.
	newFile
		nextPutAll: fileContents;
		flush;
		close.

	result := apiOperation doIt.

	self assert: (result = fileContents).

	System performOnServer: 'rm ', (path, formId, '-',fileId)