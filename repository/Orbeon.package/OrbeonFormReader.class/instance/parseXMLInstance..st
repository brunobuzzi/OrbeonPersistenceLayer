parsing
parseXMLInstance: orbeonXMLInstance
	"Parse the xml orbeon instnace of the receiver "

	xmlInstanceDocument := XMLDOMParser parse: orbeonXMLInstance.
	^xmlInstanceDocument