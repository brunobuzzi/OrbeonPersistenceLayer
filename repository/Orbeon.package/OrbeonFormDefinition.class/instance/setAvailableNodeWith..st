other
setAvailableNodeWith: aBooleanString
	| xmlDoc metadata available newXML |

	xmlDoc := XMLDOMParser parse: xmlString.
	metadata := xmlDoc allElementsNamed: 'metadata'.
	metadata isEmpty ifTrue: [^self].
	metadata := metadata last.

	metadata removeNodes: (metadata allElementsNamed: 'available').

	available := XMLElement named: 'available'.
	available addContent: aBooleanString.
	metadata addNode: available.

	newXML := String new.
	xmlDoc printOn: (PrintStream on: newXML).
	xmlString := newXML.