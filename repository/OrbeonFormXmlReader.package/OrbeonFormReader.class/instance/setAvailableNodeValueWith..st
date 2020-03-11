metadata
setAvailableNodeValueWith: aBooleanString
	"The receiver set the value to the <available> node with <aBooleanString>.
	Answer xml <aString> the new xml definition. On any error answer the current xml definition"
	| metadataNode availableNode newAvailableNode newXML |

	((aBooleanString = 'true') or: [aBooleanString = 'false']) ifFalse: [^OrbeonInvalidXMLException signal: '<available> node value is invalid'].
	metadataNode := self getXmlMetadataNodeIfNone: [^xmlDefinition]. 
	availableNode := self getXmlAvailableNodeIfNone: [nil]. "no <available> node --> is available" 

	availableNode ifNotNil: [metadataNode removeNodes: (OrderedCollection with: availableNode)].

	newAvailableNode := XMLElement named: 'available'.
	newAvailableNode addContent: aBooleanString.
	metadataNode addNode: newAvailableNode.

	newXML := String new.
	xmlDocument printOn: (PrintStream on: newXML).
	xmlDefinition := newXML.

	^newXML