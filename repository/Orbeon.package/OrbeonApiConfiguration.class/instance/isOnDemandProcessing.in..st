deferred processing
isOnDemandProcessing: formName in: appName
	"Answer whether of not the form named <formName> in the application <appName> has on demand XML processing
	If value is <false> then the XML processing is on demand"

	^((deferredXmlProcessing at: appName ifAbsent: [^true])
		at: formName) not