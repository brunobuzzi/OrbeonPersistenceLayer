deferred processing
setDeferredProcessingFor: formName in: appName
	"The receiver set the XML processing as -Deferred- for the form named <formName> in the applicacion named <appName> "

	^(deferredXmlProcessing at: appName ifAbsentPut: [Dictionary new])
		at: formName put: true