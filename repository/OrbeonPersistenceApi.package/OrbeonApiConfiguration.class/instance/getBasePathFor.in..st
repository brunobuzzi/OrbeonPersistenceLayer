attachment path
getBasePathFor: formName in: appName
	"The receiver answer the base path where attachment of form <formName> in application <appName> are stored"

	^(pathForAttachments at: appName ifAbsent: [^baseAttachmentPath])
		at: formName ifAbsent: [baseAttachmentPath]