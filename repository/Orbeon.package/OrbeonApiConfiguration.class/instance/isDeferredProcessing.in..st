deferred processing
isDeferredProcessing: formName in: appName
	"Answer whether of not the form named <formName> in the application <appName> has deferred XML processing
	If value is <true> then the XML processing is deferred"

	^(deferredXmlProcessing at: appName ifAbsent: [^false])
		at: formName ifAbsent: [^false]