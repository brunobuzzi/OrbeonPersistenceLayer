publish
setAvailableNodeWith: aBooleanString
	"The receiver set the value to the <available> node with <aBooleanString>.
	Answer xml <aString> the new xml definition. 
	On any error answer the current xml definition"

	((aBooleanString = 'true') or: [aBooleanString = 'false']) ifFalse: [^OrbeonInvalidXMLException signal: '<available> node value is invalid'].

	self xmlString: (self newFormBuilder setAvailableNodeValueWith: aBooleanString)