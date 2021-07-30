other
deleteAllOSFilesAt: basePath

	System performOnServer: 'touch ', basePath, 'definitions/published/text.text'.
	System performOnServer: 'touch ', basePath, 'definitions/saved/text.text'.
	System performOnServer: 'touch ', basePath, 'drafts/text.text'.
	System performOnServer: 'touch ', basePath, 'instances/text.text'.
	System performOnServer: 'touch ', basePath, 'temp/text.text'.

	maintenance deleteAllOSFilesAt: basePath.

	self deny: (GsFile existsOnServer: basePath, 'definitions/published/text.text').
	self deny: (GsFile existsOnServer: basePath, 'definitions/saved/text.text').
	self deny: (GsFile existsOnServer: basePath, 'drafts/text.text').
	self deny: (GsFile existsOnServer: basePath, 'instances/text.text').
	self deny: (GsFile existsOnServer: basePath, 'temp/text.text').

	System performOnServer: 'rm -Rf ', basePath.