attachment path
setPath: aPath for: formName in: appName
	"The receiver set the path <aPath> to store forms attachment for form named <formName> in the application <appName> "

	^(pathForAttachments at: appName ifAbsentPut: [Dictionary new])
		at: formName put: aPath