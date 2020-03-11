parsing
parseXMLDefinition
	"Creates a new instance of the receiver for a file named <aString>"

	xmlDocument := XMLDOMParser parse: xmlDefinition.
	^xmlDocument